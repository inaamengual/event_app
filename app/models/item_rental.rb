class ItemRental < ApplicationRecord
  belongs_to :booking_request
  belongs_to :inventory_item
  enum status: { pending: 0, approved: 1, declined: 2}
end
