class Venue < ApplicationRecord
  has_many :photos
  belongs_to :user, optional: true
  has_and_belongs_to_many :cuisines


end
