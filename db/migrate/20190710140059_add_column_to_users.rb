class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :daily, :string
    add_column :users, :weekly, :string
    add_column :users, :monthly, :string
  end
end
