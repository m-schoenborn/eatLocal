class Tag < ApplicationRecord
  has_many :products, through: :product_tags
  has_many :product_tags, dependent: :destroy
  validates :name, presence: true

end
