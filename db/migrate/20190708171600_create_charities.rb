class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :website
      t.string :logo

      t.timestamps
    end
  end
end
