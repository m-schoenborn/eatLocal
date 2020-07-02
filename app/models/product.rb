class Product < ApplicationRecord
  belongs_to :producer
  has_many :product_tags
end
