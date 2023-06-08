class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :serial
      t.string :model
      t.string :brand
      t.string :processor
      t.integer :memory
      t.float :storage
      t.boolean :status
      t.belongs_to :headquarter, null: false, foreign_key: true
      t.belongs_to :colaborator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
