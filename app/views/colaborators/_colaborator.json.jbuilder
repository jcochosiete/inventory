# frozen_string_literal: true

json.extract! colaborator, :id, :name, :lastname, :profile, :status, :email, :number, :adress, :created_at, :updated_at
json.url colaborator_url(colaborator, format: :json)
