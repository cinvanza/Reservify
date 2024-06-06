class AddReservedBooleanColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :reserved, :boolean, default: false, null: false
  end
end
