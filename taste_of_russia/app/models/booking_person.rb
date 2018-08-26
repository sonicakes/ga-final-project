# == Schema Information
#
# Table name: booking_people
#
#  id         :bigint(8)        not null, primary key
#  booking_id :integer
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BookingPerson < ApplicationRecord
  validates :first_name, :last_name, presence: true
  belongs_to :booking
end
