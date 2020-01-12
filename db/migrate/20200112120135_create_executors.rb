# frozen_string_literal: true

class CreateExecutors < ActiveRecord::Migration[6.0]
  def change
    create_table :executors, &:timestamps
  end
end
