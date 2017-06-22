class AddVenueIdToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :venue_id, :integer

  end
end
