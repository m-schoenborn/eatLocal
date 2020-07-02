class Tag < ApplicationRecord
  has_many :product_tags
  validates :name, presence: true
end
