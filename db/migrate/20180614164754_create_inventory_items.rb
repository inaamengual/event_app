class CreateInventoryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_items do |t|
      t.string :category
      t.string :subcategory
      t.string :name
      t.integer :quantity
      t.integer :price
      t.string :calendar

      t.timestamps
    end
  end
end
