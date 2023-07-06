Rails.application.routes.draw do
  get 'dasboard/index'
  get '/index',to: 'dasboard#index', as: :dasboard
  resources :histories
  resources :devices
  resources :peripherals
  resources :colaborators
  resources :headquarters
  resources :types
  resources :dasboard
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
