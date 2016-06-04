class AddUserIdColumnToFavouriteList < ActiveRecord::Migration
  def change
    add_column :favourite_lists, :user_id, :integer
  end
end
