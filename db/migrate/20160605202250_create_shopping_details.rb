class CreateShoppingDetails < ActiveRecord::Migration
  def change
    create_table :shopping_details do |t|

      t.timestamps null: false
    end
  end
end
