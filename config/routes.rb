Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { RegistrationsController: "registrations", SessionsController: "sessions" }
 

get "get_buildings_by_customer/:customer_id", to: "interventions#get_buildings_by_customer"
get "get_batteries_by_building/:building_id", to: "interventions#get_batteries_by_building"
get "get_columns_by_batteries/:battery_id", to: "interventions#get_columns_by_batteries"
get "get_elevators_by_columns/:column_id", to: "interventions#get_elevators_by_columns"
# get "/building_search" => "intervention#building_search"

get "home/login"
get "/" => "home#index", :as => "root"
post "/" , to: "home#create"
get "residential" => "home#residential"
get "commercial" => "home#commercial"
get "quote" => "home#quote"
get "video" => "home#video"
get "/intervention" => "home#intervention"
post "getData" => "quote#getData"
post "/intervention" => "interventions#create"
post "/intervention" => "interventions#create_intervention_ticket"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
