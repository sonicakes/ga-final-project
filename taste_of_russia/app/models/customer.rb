class Customer < ApplicationRecord
    validates :first_name, :last_name, :email, :password_digest, :phone_number, presence: true
    has_many :bookings
end
