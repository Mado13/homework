class Space < ApplicationRecord
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  serialize :amenities
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  AMENITIES = ["lock", "monitor", "desk", "mouse", "keyboard", "mirror", "tea", "coffee", "massage",
               "parking", "snacks", "shower", "hairdryer", "vacuum cleaner", "yoga mats", "balcony", "rooftop",
               "music player", "toaster", "fridge", "peloton"]

  validates :address, :description, :name, presence: true
  validates :price, numericality: true, presence: true
  # validates :amenities, inclusion: { in: AMENITIES,
  #                                    message: "Choose your amenities"}
end
