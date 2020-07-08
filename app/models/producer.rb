class Producer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy

  has_many_attached :photos

  has_many :favorites, dependent: :destroy
  has_many :producer_news, dependent: :destroy
  has_many :tags, through: :products

  has_many :chatrooms
  has_many :messsages, through: :chatrooms

  #has_many :tags, through: :products
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :phone_number, :address, :email, :description, presence: true
  validates :name, uniqueness: true
  validates :description, length: { minimum: 20 }

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name],
    associated_against: {
      products: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  def check_favorite?(user)
    user.favorites.each do |favorite|
      return true if favorite.producer == self
    end
    return false
  end
end
