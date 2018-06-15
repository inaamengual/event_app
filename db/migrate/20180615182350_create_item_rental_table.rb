class CreateItemRentalTable < ActiveRecord::Migration[5.2]
  def change
    create_table :item_rentals, :id => false do |t|
      t.integer :inventory_item_id
      t.integer :booking_request_id

      # t.index [:booking_request_id, :inventory_item_id]
      # t.index [:inventory_item_id, :booking_request_id]
    end
  end
end
