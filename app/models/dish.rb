class Dish < ApplicationRecord
  has_many :photos
  belongs_to :venue, optional: true
  has_and_belongs_to_many :cuisines
  has_and_belongs_to_many :venues
  belongs_to :user, optional: true

end
