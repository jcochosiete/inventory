# frozen_string_literal: true

class Device < ApplicationRecord
  validates :serial, presence: true
  validates :model, presence: true
  validates :processor, presence: true
  validates :memory, presence: true
  validates :storage, presence: true
  validates :status, presence: true
  belongs_to :headquarter
  belongs_to :colaborator
end
