class Booking < ApplicationRecord
validates :start_date, presence: true
end
