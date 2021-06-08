class Booking < ApplicationRecord
  before_create :set_total_price

  belongs_to :icon
  has_one :review, dependent: :destroy
  belongs_to :user
  enum status: [:pending, :accepted, :declined]

  private

  def set_total_price
    self.total_price = (end_time - start_time).to_i * icon.price
  end
end
