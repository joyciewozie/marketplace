class AddsUserReferenceToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :user, index: true, foreign_key: true
    rename_column :bookings, :user_id, :customer_id
  end
end
