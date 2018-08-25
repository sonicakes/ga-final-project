class TourDay < ApplicationRecord
  validates :title, :description, presence: true
end
