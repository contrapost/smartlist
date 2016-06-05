class AddUserIdToShoppingDetail < ActiveRecord::Migration
  def change
    add_column :shopping_details, :user_id, :integer
  end
end
