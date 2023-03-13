class Flat < ApplicationRecord
    # belongs_to :users
    # has_many :bookings

    validates :description, presence: true
    validates :price_per_night, presence: true
end
