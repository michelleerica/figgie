class Photo < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :venue, optional: true
  has_and_belongs_to_many :cuisines


end
