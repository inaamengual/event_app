class InventoryItem < ApplicationRecord
  include Searchable
  belongs_to :company

  has_many :item_rentals, dependent: :destroy
  has_many :booking_requests, through: :item_rentals
  has_many_attached :images, dependent: :destroy
  validates :price, presence: true
  validates :name, presence: true
  validates :quantity, presence: true
  def self.searchable_column
    "name"
  end


end
