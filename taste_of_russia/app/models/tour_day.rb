class TourDay < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :tour
end
