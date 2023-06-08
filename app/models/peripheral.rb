class Peripheral < ApplicationRecord
  belongs_to :type
  belongs_to :colaborator
  belongs_to :headquarter
end
