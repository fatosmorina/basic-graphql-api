class AddGraphTokenToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :graph_token, :string
    add_index :users, :graph_token, :unique

    User.find_each do |user|
      user.update(graph_token: SecureRandom.hex(8))
    end

    add_column :users, :graph_token, :string, null: false
  end
end
