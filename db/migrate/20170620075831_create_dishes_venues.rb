class CreateDishesVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes_venues do |t|
      t.integer :dish_id
      t.integer :venue_id
    end
  end
end
