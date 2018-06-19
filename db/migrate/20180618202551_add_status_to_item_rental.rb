class AddStatusToItemRental < ActiveRecord::Migration[5.2]
  def change
    add_column :item_rentals, :status, :integer, default: 0
  end
end
