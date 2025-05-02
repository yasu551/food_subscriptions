class Plan < ApplicationRecord
  validates :name, presence: true

  scope :default_order, -> { order(:id) }
end
