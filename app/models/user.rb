class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :bookings
  has_many :trips, through: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
