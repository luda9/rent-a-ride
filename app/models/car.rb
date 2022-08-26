class Car < ApplicationRecord
  validates :brand, :year, :color, :model, :plate, :price, presence: true
  validates :year, :price, numericality: { only_integer: true }
  validates :year, numericality: { less_than_or_equal_to: 2022 }
  has_many_attached :photos

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
end
