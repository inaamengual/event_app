class Company < ApplicationRecord
  include Searchable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :inventory_items, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
  has_many_attached :images, dependent: :destroy


  def self.searchable_column
    "company_name"
  end
end
