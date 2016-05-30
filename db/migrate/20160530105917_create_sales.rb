class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.text :name
      t.datetime :expiry_date
      t.text :image_url

      t.timestamps null: false
    end
  end
end
