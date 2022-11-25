class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hitman
  has_one :review

  has_one_attached :photo
end
