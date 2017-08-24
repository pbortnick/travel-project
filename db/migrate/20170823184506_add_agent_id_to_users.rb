class AddAgentIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :agent_id, :integer
  end
end
