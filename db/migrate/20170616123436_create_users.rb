class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.text :email
      t.string :password_digest
      t.text :image
      t.text :instagram
      t.text :bio
      t.text :website


      t.timestamps
    end
  end
end
