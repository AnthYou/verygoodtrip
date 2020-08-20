class Booking < ApplicationRecord
  validates :description, presence: true
  validates :user_id, uniqueness: { scope: :trip_id,
    message: "already joined this trip" }
  belongs_to :user
  belongs_to :trip
end
