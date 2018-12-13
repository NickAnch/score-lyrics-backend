class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :integer
  end
end
