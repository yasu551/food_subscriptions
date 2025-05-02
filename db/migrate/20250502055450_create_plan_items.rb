class CreatePlanItems < ActiveRecord::Migration[8.0]
  def change
    create_table :plan_items do |t|
      t.references :plan, null: false, foreign_key: true
      t.references :ingredient_set, null: false, foreign_key: true

      t.timestamps
    end
  end
end
