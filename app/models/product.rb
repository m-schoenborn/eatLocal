class Product < ApplicationRecord
  belongs_to :producer
  has_many :product_tags
  has_many :tags, through: :product_tags
end
