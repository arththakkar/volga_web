Rails.application.routes.draw do
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
  end
end
