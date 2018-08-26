class Customer < ApplicationRecord
    validates :email, :password_digest, presence: true
    has_many :bookings
    has_secure_password
end
