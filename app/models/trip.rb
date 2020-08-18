class Trip < ApplicationRecord
  has_one_attached :photo
  has_many :users, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :title, presence: true
  validates :description, presence:true
  validates :destination, presence:true
  validates :budget_min, presence: true
  validates :budget_max, presence: true
  validates :departure_date, presence: true
  validates :return_date, presence: true
  validates :capacity, presence: true
end
