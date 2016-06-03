class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.text :name
      t.boolean :favourite
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
