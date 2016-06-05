class CreateProductsRecipes < ActiveRecord::Migration
  def change
    create_table :products_recipes do |t|
      t.integer :product_id
      t.integer :recipe_id
    end
  end
end
