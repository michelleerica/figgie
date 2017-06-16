class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :street_address
      t.integer :postcode_id
      t.integer :cuisine_id
      t.string :website
      t.string :price_range
      t.string :opening_hours
      t.string :reservation_avail
      t.text :business_description
      t.text :user_description
      t.string :phone

      t.timestamps
    end
  end
end
