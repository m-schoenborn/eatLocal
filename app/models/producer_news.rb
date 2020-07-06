class ProducerNews < ApplicationRecord
  belongs_to :producer
  validates :title, :description, presence: true
end
