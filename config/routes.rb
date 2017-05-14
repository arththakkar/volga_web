Rails.application.routes.draw do
  get "api_help/index", :as => :api_help
  namespace :api, :defaults => {:format => 'json'} do
    resources :areas, only: [:index]
    resources :franchise_leaders, only: [:create]
    resources :franchises, only: [:create]
    resources :drivers, only: [:create]
    resources :car_types, only: [:index]
    resources :cars, only: [:index]
  end
end
