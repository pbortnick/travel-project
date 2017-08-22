class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :location
      t.integer :price
      t.integer :trip_length
      t.string :weather

      t.timestamps
    end
  end
end
