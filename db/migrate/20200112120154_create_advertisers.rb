# frozen_string_literal: true

class CreateAdvertisers < ActiveRecord::Migration[6.0]
  def up
    execute <<-DDL
          CREATE TYPE advertizer_positions AS ENUM (
            'intern', 'manager', 'head manager'
          );
    DDL

    create_table :advertizers do |t|
      t.column :position, :advertizer_positions
      t.string :organization, null: false
      t.belongs_to :user

      t.timestamps
    end
  end

  def down
    drop_column :position, :advertizer_positions
    execute 'DROP type advertizer_positions;'
  end
end
