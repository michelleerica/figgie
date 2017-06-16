class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :user_id
      t.integer :venue_id
      t.text :dish_id
      t.text :description
      t.text :price_range

      t.timestamps
    end
  end
end
