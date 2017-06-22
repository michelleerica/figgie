class DeleteJoinTable < ActiveRecord::Migration[5.0]
  def change
    drop_join_table :dishes, :venues 

  end
end
