Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get "api_help/index", :as => :api_help
  namespace :api, :defaults => {:format => 'json'} do
    resources :areas, only: [:index]
    resources :franchise_leaders, only: [:create]
    resources :franchises, only: [:create]
    resources :drivers, only: [:create]
    resources :car_types, only: [:index]
    resources :cars, only: [:index]
    get "/get_plan", to: "plans#get_plan"
    get "/check_allocated", to: "areas#get_allocated"
    get "/confirm_drivers", to: "confirm_drivers#index", as: :confirm_drivers
    get "/confirm_driver_show", to: "confirm_drivers#show", as: :confirm_driver_show
  end

  resources :drivers, only: [:index, :show]
  resources :franchises, only: [:index, :show]
  resources :franchise_leaders, only: [:index, :show]

  get "/fetch_from_area", to: "franchises#fetch_from_area", as: :fetch_from_area
  get "/export_franchise", to: "franchises#export_franchise", as: :export_franchise
  get "/export_driver", to: "drivers#export_driver", as: :export_driver
  get "/admin_index", to: "drivers#admin_index", as: :admin_index
  namespace :admin do
    root "home#index"
    resources :confirm_franchises
    resources :confirm_drivers
    resources :franchise_areas
    post "create_franchise_login/:id", to: "confirm_franchises#create_franchise_login", as: :create_franchise_login
  end
end
