class Hitman < ApplicationRecord
  METHOD = %w[gun punch car superpower knife fatality poison]
  belongs_to :user

  has_one_attached :photo
  has_many :bookings, dependent: :destroy
end
