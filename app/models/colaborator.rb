class Colaborator < ApplicationRecord
    validates :name, presence: true
    validates :lastname, presence: true
    validates :status, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :adress, presence: true
    validates :phone, presence: true, uniqueness: true, format:{with:/\A[0-9]{10,11}\z/}
end
