class FixJoinTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :cuisines_dishes, :photo_id, :dish_id

  end
end
