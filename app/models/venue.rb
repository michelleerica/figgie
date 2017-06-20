class Venue < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :dishes
  has_many :photos, through: :dishes
end
