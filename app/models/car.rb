class Car < ApplicationRecord
  validates :brand, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :model, presence: true
  validates :plate, presence: true
  validates :price, presence: true
  validates :year, :price, numericality: { only_integer: true }
  validates :year, numericality: { less_than_or_equal_to: 2022 }
end
