class AddColumnsToFlats < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :available_start, :date
    add_column :flats, :available_end, :date
    add_column :flats, :available_days, :text
  end
end
