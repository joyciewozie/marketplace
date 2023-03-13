class AddsUserReferenceToFlat < ActiveRecord::Migration[7.0]
  def change
    add_reference :flats, :user, index: true, foreign_key: true
    rename_column :flats, :user_id, :owner_id
  end
end
