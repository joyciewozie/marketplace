class AddNameRefernecesToFlat < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :name, :string, null: false
    add_column :flats, :location, :string, null: false
  end
end
