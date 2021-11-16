class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings

  AMENITIES = ["lock", "monitor", "desk", "mouse", "keyboard", "mirror", "tea", "coffee", "massage table",
               "parking space", "snacks", "shower", "hairdryer", "vacuum cleaner", "yoga mats", "balcony", "rooftop",
               "music player", "toaster", "fridge", "peloton"]

  validates :city, :country, :street, :description, :name, presence: true
  validates :price, :street_number, numericality: true, presence: true
  # validates :amenities, inclusion: { in: AMENITIES,
  #                                    message: "Choose your amenities"}
end
