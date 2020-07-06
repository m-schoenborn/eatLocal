class Tag < ApplicationRecord
  has_many :products, through: :product_tags
  validates :name, presence: true

end
