class CreateDeliveries < ActiveRecord::Migration[8.0]
  def change
    create_table :deliveries do |t|
      t.references :user, null: false, foreign_key: true
      t.date :scheduled_on, null: false
      t.string :status, null: false, default: 'preparing'
      t.string :time_slot, null: false

      t.timestamps
    end
  end
end
