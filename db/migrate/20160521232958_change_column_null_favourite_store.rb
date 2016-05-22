class ChangeColumnNullFavouriteStore < ActiveRecord::Migration
  def change
    change_column_null :favourite_stores, :name, false
    change_column_null :favourite_stores, :user_id, false
  end
end
