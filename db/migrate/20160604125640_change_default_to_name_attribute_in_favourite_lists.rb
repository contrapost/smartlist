class ChangeDefaultToNameAttributeInFavouriteLists < ActiveRecord::Migration
  def change
    change_column :favourite_lists, :name, :text, :default => 'Unnamed list'
  end
end
