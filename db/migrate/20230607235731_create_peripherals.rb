class CreatePeripherals < ActiveRecord::Migration[7.0]
  def change
    create_table :peripherals do |t|
      t.string :serial
      t.text :description
      t.string :brand
      t.string :model
      t.belongs_to :type, null: false, foreign_key: true
      t.belongs_to :colaborator, null: false, foreign_key: true
      t.belongs_to :headquarter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
