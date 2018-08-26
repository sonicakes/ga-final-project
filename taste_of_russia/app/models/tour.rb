# == Schema Information
#
# Table name: tours
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :string
#  price       :integer
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tour < ApplicationRecord
   validates :title, :price, :description, presence: true
   validates_numericality_of :price, :only_integer => true, :greater_than_or_equal_to => 500
    validates :description, length: { maximum: 200 }
    has_many :tour_days
    has_many :bookings
end
