class Booking < ApplicationRecord
validates :start_date, presence: true
belongs_to :customer
belongs_to :tour
has_many :booking_people
end
