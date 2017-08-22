class CreateAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :destination_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
