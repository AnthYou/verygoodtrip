class Trip < ApplicationRecord
  has_one_attached :photo
  has_many :users, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :destination, presence: true
  validates :budget_min, presence: true
  validates :budget_max, presence: true
  validates :departure_date, presence: true
  validates :return_date, presence: true
  validates :capacity, presence: true
  validate :end_date_after_start_date # error message is not displayed yet in simple form

  private

  def end_date_after_start_date
    return if return_date.blank? || departure_date.blank?

    if return_date < departure_date
      errors.add(:end_date, "must be after the departure date")
    end
  end
end
