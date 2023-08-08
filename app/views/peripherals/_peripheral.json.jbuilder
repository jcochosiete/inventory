# frozen_string_literal: true

json.extract! peripheral, :id, :serial, :description, :brand, :model, :type_id, :colaborator_id, :headquarter_id,
              :created_at, :updated_at
json.url peripheral_url(peripheral, format: :json)
