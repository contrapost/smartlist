class CreateFavouriteStores < ActiveRecord::Migration
  def change
    create_table :favourite_stores do |t|
      t.text :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
