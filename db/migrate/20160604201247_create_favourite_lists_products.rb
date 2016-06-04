class CreateFavouriteListsProducts < ActiveRecord::Migration
  def change
    create_table :favourite_lists_products do |t|
      t.integer :favourite_list_id
      t.integer :product_id
    end
  end
end
