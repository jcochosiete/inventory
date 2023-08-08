# frozen_string_literal: true

require 'application_system_test_case'

class DevicesTest < ApplicationSystemTestCase
  setup do
    @device = devices(:one)
  end

  test 'visiting the index' do
    visit devices_url
    assert_selector 'h1', text: 'Devices'
  end

  test 'should create device' do
    visit devices_url
    click_on 'New device'

    fill_in 'Brand', with: @device.brand
    fill_in 'Colaborator', with: @device.colaborator_id
    fill_in 'Headquarter', with: @device.headquarter_id
    fill_in 'Memory', with: @device.memory
    fill_in 'Model', with: @device.model
    fill_in 'Processor', with: @device.processor
    fill_in 'Serial', with: @device.serial
    check 'Status' if @device.status
    fill_in 'Storage', with: @device.storage
    click_on 'Create Device'

    assert_text 'Device was successfully created'
    click_on 'Back'
  end

  test 'should update Device' do
    visit device_url(@device)
    click_on 'Edit this device', match: :first

    fill_in 'Brand', with: @device.brand
    fill_in 'Colaborator', with: @device.colaborator_id
    fill_in 'Headquarter', with: @device.headquarter_id
    fill_in 'Memory', with: @device.memory
    fill_in 'Model', with: @device.model
    fill_in 'Processor', with: @device.processor
    fill_in 'Serial', with: @device.serial
    check 'Status' if @device.status
    fill_in 'Storage', with: @device.storage
    click_on 'Update Device'

    assert_text 'Device was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Device' do
    visit device_url(@device)
    click_on 'Destroy this device', match: :first

    assert_text 'Device was successfully destroyed'
  end
end
