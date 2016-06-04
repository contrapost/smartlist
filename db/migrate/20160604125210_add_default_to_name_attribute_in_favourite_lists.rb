class AddDefaultToNameAttributeInFavouriteLists < ActiveRecord::Migration
  def change
    change_column :favourite_lists, :name, :text, :default => DateTime.now.strftime('%d.%m.%Y').to_s
  end
end
