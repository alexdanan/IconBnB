class Icon < ApplicationRecord
  CATEGORIES = ["Music", "Sports", "Business", "Food", "Politics", "Science", "Design", "Writing"]
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  validates :name, :price, :location, :category, :description, presence: true
  validates :description, length: { minimum: 10 }
  validates :category, inclusion: { in: CATEGORIES }
end
