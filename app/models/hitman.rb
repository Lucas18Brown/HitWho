class Hitman < ApplicationRecord
  METHOD = %w[gun punch car superpower knife fatality poison]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true

end
