class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates :initial, :final, :accepted, presence: true
  validate :validate_created_at

  private

  def validate_created_at
    self.initial >= Date.today
  end
end
