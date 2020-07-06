class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :producer
  validates :user, uniqueness: { scope: :producer,
    message: "User can only like one producer once" }
end
