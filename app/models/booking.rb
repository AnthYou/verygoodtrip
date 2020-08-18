class Booking < ApplicationRecord
  validates :description, presence: true
  belongs_to :user
  belongs_to :trip
end
