# == Schema Information
#
# Table name: tour_days
#
#  id            :bigint(8)        not null, primary key
#  title         :string
#  tour_id       :integer
#  description   :string
#  day_image_url :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class TourDay < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :tour
end
