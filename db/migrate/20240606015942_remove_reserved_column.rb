class RemoveReservedColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :flats, :reserved, :integer
  end
end
