class AddColumnAgainToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :goal, :integer
  end
end
