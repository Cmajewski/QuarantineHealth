Rails.application.routes.draw do
  
  get "/",to: "sessions#welcome"
  get "/signup",to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "logout", to: "sessions#destroy"

  resources :platforms do 
    resources :workouts, only: [:show, :index, :new]
  end
  resources :instructors do
    resources :workouts, only: [:show, :index, :new]
  end
  
  resources :users do
    resources :workouts, only: [:show,:index]
  end

  resources :bookings
  resources :workouts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
