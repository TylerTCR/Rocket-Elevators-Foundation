class InterventionsController < ApplicationController
  def intervention

  end

  def create 
    @intervention = Intervention.create!(
      customer_id: params['customer_list'],
      user_id: params['employee_list'],
      building_id: params['building'],
      column_id: params['column'],
      battery_id: params['battery'],
      elevator_id: params['elevator'],
      report: params['report'],
      employee_id: params['employee']
    )

    if @intervention.save
      create_intervention_ticket
    redirect_to root_path
    end 
  end 

  def get_buildings_by_customer
    @buildings = Building.where("customer_id = ?", params[:customer_id])

    respond_to do |format|
      format.json { render :json => @buildings }
    end
  end

  def get_batteries_by_building
    @batteries = Battery.where("building_id = ?", params[:building_id])

    respond_to do |format|
      format.json { render :json => @batteries }
    end
  end

  def get_columns_by_batteries
    @columns = Column.where("battery_id = ?", params[:battery_id])

    respond_to do |format|
      format.json { render :json => @columns }
    end
  end

  def get_elevators_by_columns
    @elevators = Elevator.where("column_id = ?", params[:column_id])

    respond_to do |format|
      format.json { render :json => @elevators }
    end
  end

  def building_search
    if params[:"customer"].present? && params[:"customer_id"].strip != ""
      @buildings = Building.where("customer_id = ?", params[:"customer"])
    else
      @buildings = Building.all
    end
  end

  def intervention_params
    params.require(:intervention).permit( :author, :employee_list, :customer_list, :building, :battery, :column, :elevator, :result, :report, :status, :created_at, :updated_at )
  end


  def create_intervention_ticket
    client = ZendeskAPI::Client.new do |config|
        config.url = ENV['ZENDESK_URL']
        config.username = ENV['ZENDESK_USERNAME']
        config.token = ENV['ZENDESK_TOKEN']
    end
    ZendeskAPI::Ticket.create!(client, 
        :subject => "Intervention from #{Customer.find(params['customer_list']).company_name}", 
        :comment => { 
            :value => "The company #{Customer.find(params['customer_list']).company_name} has an intervention.\n
                Details:\n
                Building ID: #{Building.find(params['building']).id}
                Battery ID: #{Battery.find(params['battery']).id} has a status of #{Battery.find(params['battery']).status}. 
                Column ID: #{Column.find(params["column"]).id} has a status of #{Column.find(params['column']).status}.
                Elevator ID: #{Elevator.find(params["elevator"]).id} has a status of #{Elevator.find(params["elevator"]).status}.
                This task has been assigned to #{Employee.find(params['employee_list']).first_name} #{Employee.find(params['employee_list']).last_name}."
        }, 
        :requester => { 
            "name": "#{current_user.employee.first_name} #{current_user.employee.last_name}", 
            "email": "#{current_user.employee.email}",
        },
        :priority => "normal",
        :type => "problem",
        )
  end
end
