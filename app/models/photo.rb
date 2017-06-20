class Photo < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :dish, optional: true
  has_many :cuisines, through: :dishes
  has_many :venues, through: :dishes



end
