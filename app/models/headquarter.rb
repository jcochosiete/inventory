# frozen_string_literal: true

class Headquarter < ApplicationRecord
  validates :name, presence: true
  validates :adress, presence: true
end
