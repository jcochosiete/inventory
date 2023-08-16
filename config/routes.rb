# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'
  resources :histories
  resources :devices
  resources :peripherals
  resources :colaborators
  resources :headquarters
  resources :types
end
