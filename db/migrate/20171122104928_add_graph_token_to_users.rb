class AddGraphTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :graph_token, :string, null: false
    add_index :users, :graph_token, unique: true
  end
end
