class Icon < ApplicationRecord
  CATEGORIES = ["Music", "Sports", "Business", "Food", "Politics", "Science", "Design", "Writing", "Cinema", "Code"]
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  validates :name, :price, :location, :category, :description, presence: true
  validates :description, length: { minimum: 10 }
  validates :category, inclusion: { in: CATEGORIES }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location,
                  against: [:location],
                  using: {
                    tsearch: { prefix: true }
                  }
end
