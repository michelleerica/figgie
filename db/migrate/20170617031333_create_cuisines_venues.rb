class CreateCuisinesVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :cuisines_venues do |t|
      t.integer :cuisine_id
      t.integer :venue_id
    end
  end
end
