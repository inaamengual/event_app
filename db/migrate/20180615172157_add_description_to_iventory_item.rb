class AddDescriptionToIventoryItem < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_items, :description, :text
  end
end
