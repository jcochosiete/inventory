class AddStatusToPeripherals < ActiveRecord::Migration[7.0]
  def change
    add_column :peripherals, :status, :boolean, defout: true
  end
end
