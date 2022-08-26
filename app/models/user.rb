class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :cars, through: :bookings
  has_many :cars, foreign_key: "user_id"
  has_one_attached :photo
end
