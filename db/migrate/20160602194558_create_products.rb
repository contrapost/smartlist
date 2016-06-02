class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.text :name
      t.float :price
      t.text :description
      t.text :store
      t.integer :favourite_store_id

      t.timestamps null: false
    end
  end
end
