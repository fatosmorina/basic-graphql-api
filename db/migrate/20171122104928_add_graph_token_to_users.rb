class AddGraphTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :graph_token, :string
  end
end
