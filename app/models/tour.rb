class Tour < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :ratings, as: :rateable
  has_many :bookings
  belongs_to :guide, class_name: 'User', foreign_key: :guide_id

  enum status: { active: 0, inactive: 1 }

  scope :tour_reviews, -> { includes(:ratings).where.not(ratings: { id: nil }) }
  scope :date_of_creation, -> { order(updated_at: :desc) }
end
