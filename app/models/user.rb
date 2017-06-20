class User < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :venues, dependent: :destroy
  has_many :dishes, dependent: :destroy

  has_secure_password

end
