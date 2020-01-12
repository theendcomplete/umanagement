# frozen_string_literal: true

class AddRolesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column(:users, :advertizer_id, :integer, null: true)
    add_column(:users, :administrator_id, :integer, null: true)
    add_column(:users, :moderator_id, :integer, null: true)
    add_column(:users, :executor_id, :integer, null: true)
  end
end
