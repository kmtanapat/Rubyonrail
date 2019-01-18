class Customer < ApplicationRecord
  has_one_attached :image
  has_many :invoices
  mount_uploader :image, ImageUploader
  # serialize :avatars, JSON # If you use SQLite, add this line.

end
