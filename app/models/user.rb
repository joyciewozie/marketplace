class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :flats, foreign_key: :owner_id, dependent: :destroy
  has_many :bookings, foreign_key: :customer_id, dependent: :destroy

  validates :name, presence: true
end
