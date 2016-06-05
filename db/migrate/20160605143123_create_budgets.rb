class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.integer :product_id
      t.integer :user_id
      t.float :price

      t.timestamps null: false
    end
  end
end
