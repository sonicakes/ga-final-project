class Tour < ApplicationRecord
   validates :title, :price, :description, presence: true
   validates_numericality_of :price, :only_integer => true, :greater_than_or_equal_to => 500
    validates :description, length: { maximum: 200 }
    has_many :tour_days
end
