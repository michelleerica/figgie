class Cuisine < ApplicationRecord
  has_and_belongs_to_many :dishes
  has_and_belongs_to_many :venues

end
