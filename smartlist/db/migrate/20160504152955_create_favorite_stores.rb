class CreateFavoriteStores < ActiveRecord::Migration
  def change
    create_table :favorite_stores do |t|
      t.text :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
