class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, presence: true
  validates :comment, presence: true
  validates :rating, numericality: { in: 0..5 }
end
