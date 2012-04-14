Xfit::Application.routes.draw do
  resources :gyms
  resources :gym_workouts
  resources :workouts
  resources :users
  resources :sessions
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#create", :as => "login"
  get "signup" => "users#new", :as => "signup"
  
  root :to => "users#new"
  
  namespace :administrators do
    resources :users
  end
  
  namespace :clients do
    resources :users
    resources :workouts
    root :to => "clients#index"
  end
  
  namespace :coaches do
    resources :gym_workouts
    resources :gyms
    resources :users
    root :to => "coaches#index"
  end
  
  namespace :owners do
    resources :gym_workouts
    resources :gyms
    resources :users
    root :to => "owners#index"
  end
end
