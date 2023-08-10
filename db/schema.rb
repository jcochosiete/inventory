# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_608_234_641) do
  create_table 'colaborators', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'lastname', null: false
    t.string 'profile'
    t.boolean 'status', null: false
    t.string 'email', null: false
    t.integer 'phone', null: false
    t.string 'adress', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'devices', force: :cascade do |t|
    t.string 'serial'
    t.string 'model'
    t.string 'brand'
    t.string 'processor'
    t.integer 'memory'
    t.float 'storage'
    t.boolean 'status'
    t.integer 'headquarter_id', null: false
    t.integer 'colaborator_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['colaborator_id'], name: 'index_devices_on_colaborator_id'
    t.index ['headquarter_id'], name: 'index_devices_on_headquarter_id'
  end

  create_table 'headquarters', force: :cascade do |t|
    t.string 'name'
    t.string 'adress'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'histories', force: :cascade do |t|
    t.integer 'colaborator_id', null: false
    t.integer 'device_id', null: false
    t.integer 'peripheral_id', null: false
    t.text 'notes'
    t.datetime 'date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['colaborator_id'], name: 'index_histories_on_colaborator_id'
    t.index ['device_id'], name: 'index_histories_on_device_id'
    t.index ['peripheral_id'], name: 'index_histories_on_peripheral_id'
  end

  create_table 'peripherals', force: :cascade do |t|
    t.string 'serial'
    t.text 'description'
    t.string 'brand'
    t.string 'model'
    t.integer 'type_id', null: false
    t.integer 'colaborator_id', null: false
    t.integer 'headquarter_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.boolean 'status'
    t.index ['colaborator_id'], name: 'index_peripherals_on_colaborator_id'
    t.index ['headquarter_id'], name: 'index_peripherals_on_headquarter_id'
    t.index ['type_id'], name: 'index_peripherals_on_type_id'
  end

  create_table 'types', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'devices', 'colaborators'
  add_foreign_key 'devices', 'headquarters'
  add_foreign_key 'histories', 'colaborators'
  add_foreign_key 'histories', 'devices'
  add_foreign_key 'histories', 'peripherals'
  add_foreign_key 'peripherals', 'colaborators'
  add_foreign_key 'peripherals', 'headquarters'
  add_foreign_key 'peripherals', 'types'
end
