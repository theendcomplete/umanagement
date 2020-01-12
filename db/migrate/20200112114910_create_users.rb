# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :name, null: false
      t.string :phone, null: false

      t.timestamps
    end
    add_index :users, :phone
    add_index :users, :name
  end
end
