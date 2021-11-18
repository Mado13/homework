class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
  has_many :reviews

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
end
