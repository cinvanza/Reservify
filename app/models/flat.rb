class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :address, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :capacity, presence: true, numericality: { greater_than: 0 }
  #serialize :available_days, Array
end
