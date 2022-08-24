class Car < ApplicationRecord
  validates :brand, :year, :color, :model, :plate, :price, presence: true
  validates :year, :price, numericality: { only_integer: true }
  validates :year, numericality: { less_than_or_equal_to: 2022 }
  has_one_attached :photo

  has_many :bookings, dependent: :destroy
  belongs_to :user
  # belongs_to :user, through: :bookings
end

# comentario
