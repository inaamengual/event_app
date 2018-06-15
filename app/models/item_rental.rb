class ItemRental < ApplicationRecord
  belongs_to :booking_request
  belongs_to :inventory_item
end
