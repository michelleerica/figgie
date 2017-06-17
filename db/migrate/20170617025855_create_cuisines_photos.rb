class CreateCuisinesPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :cuisines_photos do |t|
      t.integer :cuisine_id
      t.integer :photo_id
    end
  end
end
