class Booking < ApplicationRecord
  belongs_to :customer, class_name: 'User', foreign_key: :customer_id
  belongs_to :flat
  has_one :owner, through: :flat

  validates :start_date, presence: true
  validates :end_date, presence: true
end
