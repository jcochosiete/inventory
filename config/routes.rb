# frozen_string_literal: true

Rails.application.routes.draw do
  root 'landing#show'
  #resource 'dashboard#show'
  resources :landing, only: [:show]
  resource :dashboard
  resources :histories
  resources :devices
  resources :peripherals
  resources :colaborators
  resources :headquarters
  resources :types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
