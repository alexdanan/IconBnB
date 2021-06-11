class Icon < ApplicationRecord
  CATEGORIES = ["Music", "Sports", "Business", "Food", "Politics", "Science", "Design", "Writing", "Cinema", "Code"]
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  belongs_to :user
  has_one_attached :photo
  validates :name, :price, :location, :category, :description, presence: true
  validates :description, length: { minimum: 10 }
  validates :category, inclusion: { in: CATEGORIES }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location_and_category,
                  against: [:location, :category],
                  using: {
                    tsearch: { prefix: true }
                  }

  def average_rating
    ratings = self.reviews.map do |review|
      review.rating
    end
    ratings.inject { |sum, el| sum + el }.to_f / ratings.size
  end
end
