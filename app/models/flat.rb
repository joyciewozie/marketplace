class Flat < ApplicationRecord
  belongs_to :owner, class: 'User', foreign_key: :owner_id
  has_many :bookings
end
