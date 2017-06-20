class FixPhotoTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :cuisine_id, :integer
  end
end
