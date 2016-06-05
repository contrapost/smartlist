class AddAttachmentImageToShoppingDetails < ActiveRecord::Migration
  def self.up
    change_table :shopping_details do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shopping_details, :image
  end
end
