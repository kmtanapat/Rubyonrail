class Report < ApplicationRecord
  has_secure_password
  has_many :customers
  has_many :products
  has_one :users
end
