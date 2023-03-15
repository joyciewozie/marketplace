class Flat < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id
  has_many :bookings
  has_one_attached :photo

  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :name, presence: true
  validates :location, presence: true
end
