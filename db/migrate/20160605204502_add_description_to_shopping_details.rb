class AddDescriptionToShoppingDetails < ActiveRecord::Migration
  def change
    add_column :shopping_details, :description, :text
  end
end
