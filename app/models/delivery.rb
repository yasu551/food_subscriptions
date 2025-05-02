class Delivery < ApplicationRecord
  extend Enumerize

  belongs_to :user

  enumerize :status, in: %w[preparing delivered stopped]
  enumerize :time_slot, in: %i[am pm]
end
