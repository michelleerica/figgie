class Cuisine < ApplicationRecord
  has_and_belongs_to_many :photos
  has_and_belongs_to_many :venues

end
