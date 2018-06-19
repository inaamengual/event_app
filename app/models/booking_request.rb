class BookingRequest < ApplicationRecord
  belongs_to :user
  has_many :item_rentals, dependent: :destroy
  has_many :inventory_items, through: :item_rentals

  def total
    inventory_items.sum(&:price)
  end

end
