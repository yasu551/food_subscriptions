# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :name, null: false
      t.string :email
      t.string :login_key, null: false
      t.string :address
      t.string :telephone_number
      t.text :allergy_note
      t.boolean :active, null: false, default: true
      t.string :delivery_cycle
      t.references :plan, foreign_key: true
      t.string :encrypted_password, null: false, default: ""
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
    add_index :users, :login_key, unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
