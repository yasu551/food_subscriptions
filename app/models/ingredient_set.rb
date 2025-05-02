class IngredientSet < ApplicationRecord
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :weight, numericality: { greater_than_or_equal_to: 0, allow_blank: true }

  scope :default_order, -> { order(:id) }
end
