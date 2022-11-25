class Hitman < ApplicationRecord
  METHOD = %w[gun punch car superpower knife fatality poison]
  belongs_to :user
  
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  has_one_attached :photo
end
