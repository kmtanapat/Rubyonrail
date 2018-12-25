class User < ApplicationRecord
  has_secure_password
  has_many :areas
  validates :user_name, presence: true, uniqueness: true

end
