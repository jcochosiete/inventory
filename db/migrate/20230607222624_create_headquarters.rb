# frozen_string_literal: true

class CreateHeadquarters < ActiveRecord::Migration[7.0]
  def change
    create_table :headquarters do |t|
      t.string :name, null: false
      t.string :adress, null: false

      t.timestamps
    end
  end
end
