class AddTitleAndDescriptionToFlats < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :title, :string
    add_column :flats, :description, :text
  end
end
