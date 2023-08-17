# frozen_string_literal: true

Rails.application.routes.draw do
  root 'landing#show'
  resources :landing, only: [:show]
  resource :dashboard
  resources :histories
  resources :devices
  resources :peripherals
  resources :colaborators
  resources :headquarters
  resources :types
end
