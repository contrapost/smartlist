class CreateFavouriteLists < ActiveRecord::Migration
  def change
    create_table :favourite_lists do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
