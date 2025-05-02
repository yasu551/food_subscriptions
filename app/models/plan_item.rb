class PlanItem < ApplicationRecord
  belongs_to :plan
  belongs_to :ingredient_set
end
