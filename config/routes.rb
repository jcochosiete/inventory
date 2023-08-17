# frozen_string_literal: true

Rails.application.routes.draw do
  root 'landing#show'
  devise_for :users
  resources :landing, only: [:show]
  resources :dashboard
  resources :histories
  resources :devices
  resources :peripherals
  resources :colaborators
  resources :headquarters
  resources :types
end
