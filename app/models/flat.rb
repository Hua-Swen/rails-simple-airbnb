class Flat < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :number_of_guests, presence: true
  validates :image_url, presence: true
end
