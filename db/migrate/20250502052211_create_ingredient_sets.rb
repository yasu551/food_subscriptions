class CreateIngredientSets < ActiveRecord::Migration[8.0]
  def change
    create_table :ingredient_sets do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :content, null: false, default: ''
      t.float :weight
      t.boolean :refrigerated, null: false, default: false
      t.text :allergy_info, null: false, default: ''

      t.timestamps
    end

    add_index :ingredient_sets, :name, unique: true
  end
end
