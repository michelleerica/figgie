class FixColumnNamePhotoAfterDish < ActiveRecord::Migration[5.0]
  def change
    rename_column :photos, :venue_id, :dish_id

  end
end
