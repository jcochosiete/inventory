# frozen_string_literal: true

json.array! @peripherals, partial: 'peripherals/peripheral', as: :peripheral
