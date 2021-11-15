class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :address, :description, :name, presence: true
  validates :price, numericality: true, presence: true
end
