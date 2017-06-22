class Venue < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dishes
  has_many :photos, through: :dishes
end
