class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings

  AMENITIES = ["lock", "monitor", "desk", "mouse", "keyboard", "mirror", "tea", "coffee", "massage table", "parking space", "snacks", "shower", "hairdryer", "vacuum cleaner", "yoga mats", "balcony", "rooftop", "music" "player", "toaster", "fridge", "oven"]

  validates :address, :description, :name, presence: true
  validates :price, numericality: true, presence: true
  validates  :amenities, inclusion: { in: AMENITIES,
    message: "Choose your amenities"}
end
