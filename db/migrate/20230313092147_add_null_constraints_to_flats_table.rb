class AddNullConstraintsToFlatsTable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :flats, :description, false
    change_column_null :flats, :price_per_night, false
  end
end
