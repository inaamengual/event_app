class BookingRequest < ApplicationRecord
  belongs_to :user
  has_many :item_rentals
  has_many :inventory_items, through: :item_rentals
end
