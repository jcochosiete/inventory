class History < ApplicationRecord
  belongs_to :colaborator
  belongs_to :device
  belongs_to :peripheral
end
