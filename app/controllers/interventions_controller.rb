class InterventionsController < ApplicationController
  def intervention
    # intervention = Intervention.new

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
    puts "**********"
    puts current_user
    puts "**********"
    client = ZendeskAPI::Client.new do |config|
        config.url = ENV['ZENDESK_URL']
        config.username = ENV['ZENDESK_USERNAME']
        config.token = ENV['ZENDESK_TOKEN']
    end
    # Change this...
    ZendeskAPI::Ticket.create!(client, 
        :subject => "Intervention from #{Customer.find(params['customer_list']).company_name}", 
        :comment => { 
            :value => "The company #{Customer.find(params['customer_list']).company_name} has an intervention.\n
                Details:\nBuilding ID: #{params['building_id']} has a status of #{params['building_status']}\n 
                Battery ID: #{params['battery_id']} has a status of #{params['battery_status']}\n. 
                Column ID: #{params["column_id"]} has a status of #{params["column_status"]}\n. 
                Elevator ID: #{params["elevator_id"]} has a status of #{params["elevator_status"]}.\n
                This task has been assigned to #{params['first_name']} #{params['last_name']}."
        }, 
        :requester => { 
            "name": "Tester", #{current_user.employee.first_name} #{current_user.employee.last_name}
            # "email": "tcil112000@gmail.com",
        },
        :priority => "normal",
        :type => "problem",
        )
  end
end
