# frozen_string_literal: true

class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.belongs_to :colaborator, null: false, foreign_key: true
      t.belongs_to :device, null: false, foreign_key: true
      t.belongs_to :peripheral, null: false, foreign_key: true
      t.text :notes
      t.datetime :date

      t.timestamps
    end
  end
end
