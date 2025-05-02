class Plan < ApplicationRecord
  has_many :plan_items, dependent: :restrict_with_exception
  has_many :ingredient_sets, through: :plan_items

  validates :name, presence: true

  scope :default_order, -> { order(:id) }
end
