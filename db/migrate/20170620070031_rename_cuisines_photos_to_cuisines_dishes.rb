class RenameCuisinesPhotosToCuisinesDishes < ActiveRecord::Migration[5.0]
  def change
    rename_table :cuisines_photos, :cuisines_dishes
  end
end
