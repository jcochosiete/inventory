class CreateColaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :colaborators do |t|
      t.string :name, null: false
      t.string :lastname, null: false
      t.string :profile
      t.boolean :status, null: false
      t.string :email, null: false,uniqueness: true
      t.integer :phone, null: false, uniqueness: true
      t.string :adress, null: false

      t.timestamps
    end
  end
end
