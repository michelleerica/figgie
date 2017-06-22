class CreateJoinTableCD < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_dishes do |t|
      t.integer :category_id
      t.integer :dish_id
    end
  end
end
