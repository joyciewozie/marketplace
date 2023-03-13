class Booking < ApplicationRecord
  belongs_to :customer, class: 'User', foreign_key: :customer_id
  belongs_to :flat

  validates :accepted, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
