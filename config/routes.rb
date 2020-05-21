Rails.application.routes.draw do
  get "/",to: "session#welcome"
  get "/signup",to: "user#new"

  resources :platforms do 
    resources :klasses, only: [:show, :index]
  end
  resources :instructors do
    resources :klasses, only: [:show, :index, :new]
  end
  
  resources :users do
    resources :klasses, only: [:show,:index]
  end

  resources :klasses
  resources :bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
