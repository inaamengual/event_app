class BookingRequest < ApplicationRecord
  belongs_to :user
  has_many :inventory_items, through: :item_rentals
end
