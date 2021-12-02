class InterventionsController < ApplicationController
  def intervention
    # intervention = Intervention.new

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
    params.require(:intervention).permit( :author, :employee, :customer, :building, :battery, :column, :elevator )
  end


  # def create_intervention_ticket
  #   client = ZendeskAPI::Client.new do |config|
  #       config.url = ENV['ZENDESK_URL']
  #       config.username = ENV['ZENDESK_USERNAME']
  #       config.token = ENV['ZENDESK_TOKEN']
  #   end
  #   # Change this...
  #   ZendeskAPI::Ticket.create!(client, 
  #       :subject => "Intervention from #{params['company_name']}", 
  #       :comment => { 
  #           :value => "The company #{params['company_name']} 
  #               has an intervention.\n
  #               Details:\nBuilding ID: #{params['building_id']} has a status of #{params['building_status']}\n 
  #               Battery ID: #{params['battery_id']} has a status of #{params['battery_status']}\n. 
  #               Column ID: #{params["column_id"]} has a status of #{params["column_status"]}\n. 
  #               Elevator ID: #{params["elevator_id"]} has a status of #{params["elevator_status"]}.\n
  #               This task has been assigned to #{params['first_name']} #{params['last_name']}."
               
  #       }, 
  #       :requester => { 
  #           "name": params['email'], 
  #           "email": params['email'],
  #       },
  #       :priority => "normal",
  #       :type => "problem",
  #       )
  # end
end
