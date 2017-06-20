class Photo < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :dish, optional: true


end
