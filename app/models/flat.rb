class Flat < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  geocoded_by :location
  
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :name, presence: true
  validates :location, presence: true
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model

  pg_search_scope :search_by_location,
                  against: [ :location ],
                  using: {
                    tsearch: { prefix: true }
                  }
  end
