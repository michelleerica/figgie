class User < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :venues, dependent: :destroy
  has_many :venues, dependent: :destroy

  has_secure_password
  has_many :favorites
  has_many :favorite_photos, through: :favorites, source: :favorited, source_type: 'Photo'
end
