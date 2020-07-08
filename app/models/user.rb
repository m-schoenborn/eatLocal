class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  # has_one :producer
  has_many :favorites
  has_many :chatrooms
  has_many :messsages, through: :chatrooms

  validates :role, inclusion: { in: %w(customer producer admin) }

  def producer
    Producer.find_by(user_id: self.id)
  end
end
