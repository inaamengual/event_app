class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :inventory_items, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
  has_many_attached :images, dependent: :destroy


  def self.search(term:, category:)
    return all if term.empty? && category.empty?
    return where("company_name ilike :term", term: "%#{term}%") if term.present? && category.empty?
    return where(category: category) if term.empty? && category.any?
    return where("company_name ilike :term", term: "%#{term}%").where(category: category) if term.present? && category.any?
  end




  def self.categories
    ["furniture", "decoration", "tableware", "production", "kids", "service"]

  end

end
