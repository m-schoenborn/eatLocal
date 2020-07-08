class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_one :producer
  has_many :favorites
  # has_many :messages, dependent: :destroy
  # has_many :chatrooms, through: :messages, dependent: :destroy

  validates :role, inclusion: { in: %w(customer producer admin) }
end
