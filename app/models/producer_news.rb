class ProducerNews < ApplicationRecord
  belongs_to :producer
  validates :name, :description, presence: true
end
