class CreateCharityUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :charity_users do |t|
      t.references :charity, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :donation

      t.timestamps
    end
  end
end
