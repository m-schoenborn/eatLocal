class Producer < ApplicationRecord
  belongs_to :user
  has_many :products
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :phone_number, :address, :email, :description, presence: true
  validates :name, uniqueness: true
  validates :description, length: { minimum: 20 }
end
