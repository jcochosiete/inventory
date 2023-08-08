# frozen_string_literal: true

require 'application_system_test_case'

class PeripheralsTest < ApplicationSystemTestCase
  setup do
    @peripheral = peripherals(:one)
  end

  test 'visiting the index' do
    visit peripherals_url
    assert_selector 'h1', text: 'Peripherals'
  end

  test 'should create peripheral' do
    visit peripherals_url
    click_on 'New peripheral'

    fill_in 'Brand', with: @peripheral.brand
    fill_in 'Colaborator', with: @peripheral.colaborator_id
    fill_in 'Description', with: @peripheral.description
    fill_in 'Headquarter', with: @peripheral.headquarter_id
    fill_in 'Model', with: @peripheral.model
    fill_in 'Serial', with: @peripheral.serial
    fill_in 'Type', with: @peripheral.type_id
    click_on 'Create Peripheral'

    assert_text 'Peripheral was successfully created'
    click_on 'Back'
  end

  test 'should update Peripheral' do
    visit peripheral_url(@peripheral)
    click_on 'Edit this peripheral', match: :first

    fill_in 'Brand', with: @peripheral.brand
    fill_in 'Colaborator', with: @peripheral.colaborator_id
    fill_in 'Description', with: @peripheral.description
    fill_in 'Headquarter', with: @peripheral.headquarter_id
    fill_in 'Model', with: @peripheral.model
    fill_in 'Serial', with: @peripheral.serial
    fill_in 'Type', with: @peripheral.type_id
    click_on 'Update Peripheral'

    assert_text 'Peripheral was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Peripheral' do
    visit peripheral_url(@peripheral)
    click_on 'Destroy this peripheral', match: :first

    assert_text 'Peripheral was successfully destroyed'
  end
end
