class FixVenueColName < ActiveRecord::Migration[5.0]
  def change

    rename_column :photos, :dish_id, :cuisine_id
    rename_column :venues, :postcode_id, :postcode
    add_column :venues, :user_id, :integer
    add_column :venues, :instagram, :string

  end
end
