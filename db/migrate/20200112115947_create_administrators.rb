# frozen_string_literal: true

class CreateAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :administrators, &:timestamps
  end
end
