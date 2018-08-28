# == Schema Information
#
# Table name: bookings
#
#  id                :bigint(8)        not null, primary key
#  tour_id           :integer
#  customer_id       :integer
#  payment_reference :string
#  start_date        :date
#  status            :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Booking < ApplicationRecord
validates :start_date, presence: true
belongs_to :customer
belongs_to :tour
has_many :booking_people
end
