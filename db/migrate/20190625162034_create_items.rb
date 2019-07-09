class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :goal
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
