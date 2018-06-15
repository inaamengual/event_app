class CreateItemRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :item_rentals do |t|
      t.belongs_to :booking_request, foreign_key: true
      t.belongs_to :inventory_item, foreign_key: true

      t.timestamps
    end
  end
end
