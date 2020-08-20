class Trip < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 30 }
  validates :destination, presence: true
  validates :budget_min, presence: true
  validates :budget_max, presence: true
  validates :departure_date, presence: true
  validates :return_date, presence: true
  validates :capacity, presence: true, numericality: { greater_than: 1 }
  validates :photo, presence: true
  validate :end_date_after_start_date # error message is not displayed yet in simple form
  include PgSearch::Model
  pg_search_scope :search_by_destination, against: :destination, using: { tsearch: { prefix: true } }

  geocoded_by :destination
  after_validation :geocode, if: :will_save_change_to_destination?

  private

  def end_date_after_start_date
    return if return_date.blank? || departure_date.blank?

    if return_date < departure_date
      errors.add(:return_date, "must be after the departure date")
    end
  end
end
