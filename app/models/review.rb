class Review < ApplicationRecord
  belongs_to :booking

  validates :comment, presence: true
  # validates :rating, numericality: true, presence: true
end
