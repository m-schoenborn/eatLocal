class Product < ApplicationRecord
  belongs_to :producer
  has_many :product_tags, dependent: :destroy
  has_many :tags, through: :product_tags
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_tag,
    against: [:name],
    associated_against: {
      tags: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
