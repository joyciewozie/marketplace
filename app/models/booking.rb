class Booking < ApplicationRecord
  belongs_to :customer, class: 'User', foreign_key: :customer_id
  belongs_to :flat
end
