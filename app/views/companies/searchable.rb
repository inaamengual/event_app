module Searchable
  extend ActiveSupport::Concern

  included do
    scope :search, -> (term){ where("#{searchable_column} LIKE ?", "%#{term}%")}
  end

end
