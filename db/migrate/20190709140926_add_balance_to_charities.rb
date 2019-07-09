class AddBalanceToCharities < ActiveRecord::Migration[5.1]
  def change
    add_column :charities, :balance, :integer
  end
end
