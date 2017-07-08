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
  end

  resources :drivers, only: [:index, :show]
  resources :franchises, only: [:index, :show]
  resources :franchise_leaders, only: [:index, :show]

  namespace :admin do
    root "home#index"
    resources :confirm_franchises
    post "create_franchise_login/:id", to: "confirm_franchises#create_franchise_login", as: :create_franchise_login
  end
end
