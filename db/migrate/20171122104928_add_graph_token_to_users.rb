class AddGraphTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :graph_token, :string
    add_index :users, :graph_token, unique

  end
end
