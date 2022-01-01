class User < ApplicationRecord
  has_secure_password
  has_many :Property
  validates :email, presence: true, uniqueness: true

end
