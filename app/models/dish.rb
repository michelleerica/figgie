class Dish < ApplicationRecord
  has_many :photos
  belongs_to :venue, optional: true
  has_and_belongs_to_many :cuisines
  has_and_belongs_to_many :venues
end
