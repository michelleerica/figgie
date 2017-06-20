class FixDishesIdRef < ActiveRecord::Migration[5.0]
  def change
    remove_column :dishes, :venue_id, :integer


  end
end
