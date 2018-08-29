# == Schema Information
#
# Table name: customers
#
#  id              :bigint(8)        not null, primary key
#  password_digest :text
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Customer < ApplicationRecord
    validates :email, :password_digest, presence: true
    has_many :bookings
    has_secure_password
end
