class InventoryItem < ApplicationRecord
  belongs_to :company

  has_many :item_rentals, dependent: :destroy
  has_many :booking_requests, through: :item_rentals
  has_many_attached :images, dependent: :destroy
  validates :price, presence: true
  validates :name, presence: true
  validates :quantity, presence: true
  before_validation :set_category


  def set_category
    self.category = self.class.categories.find do |cat, subcats|
                      subcats.include?(subcategory)
                    end.first
  end

  def self.search(term:, category:)
    return all if term.empty? && category.empty?
    return where("name ilike :term or description like :term or subcategory like :term", term: "%#{term}%") if term.present? && category.empty?
    return where(category: category) if term.empty? && category.any?
    return where("name ilike :term or description like :term or subcategory like :term", term: "%#{term}%").where(category: category) if term.present? && category.any?
  end

  def self.categories
    {
      'Furniture'   => ["Dining Chair", "Arm Chair", "Sofa", "Loveseat", "Ottoman", "Bar Stool", "Bench", "Cocktail Table", "Coffee Table", "Dinning Table", "Side Table", "Accent Table", "Highbuoy", "Bar", "DJ Booth", "Desk"],
      'Decoration'  => ['Lantern', 'Pedestal', 'Mirror', 'Rug', 'Pillow', 'Vase', 'Directional Sign', 'Rope', 'Umbrella', 'Other'],
      'Tableware'   => ['Wine Glass', 'Champagne Glass', 'Regular Glass', 'Mug', 'Fork', 'Knife', 'Spoon', 'Serving Piece', 'Plate', 'Jar', 'Table Cloth', 'Runner', 'Napkin'],
      'Production'  => ['Stage', 'Dance Floor', 'Guard Rail', 'Tent', 'Pool Cover', 'Lighting', 'Screens', 'TV', 'Fog', 'Portable Restroom'],
      'Kids'        => ['Bounce House', 'Slide', 'Games', 'Concession Stand'],
      'Service'     => ['Bouncer', 'Security', 'Valet', 'Bartender', 'Barback', 'Waiter', 'Dancer', 'DJ', 'Musician']
    }
  end



end
