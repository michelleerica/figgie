class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
