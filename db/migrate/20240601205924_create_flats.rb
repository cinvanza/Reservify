class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :address
      t.integer :price
      t.integer :capacity
      t.integer :reserved
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
