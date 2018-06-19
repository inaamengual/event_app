class InventoryItem < ApplicationRecord
  include Searchable

  belongs_to :company

  has_many :item_rentals
  has_many :booking_requests, through: :item_rentals
  has_many_attached :images


  def self.searchable_column
    "name"
  end
end
