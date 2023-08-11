# frozen_string_literal: true

require 'test_helper'

class PeripheralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peripheral = peripherals(:one)
  end

  test 'should get index' do
    get peripherals_url
    assert_response :success
  end

  test 'should get new' do
    get new_peripheral_url
    assert_response :success
  end

  test 'should create peripheral' do
    assert_difference('Peripheral.count') do
      post peripherals_url,
           params: { peripheral: { brand: @peripheral.brand, colaborator_id: @peripheral.colaborator_id,
                                   description: @peripheral.description, headquarter_id: @peripheral.headquarter_id, model: @peripheral.model, serial: @peripheral.serial, type_id: @peripheral.type_id } }
    end

    assert_redirected_to peripheral_url(Peripheral.last)
  end

  test 'should show peripheral' do
    get peripheral_url(@peripheral)
    assert_response :success
  end

  test 'should get edit' do
    get edit_peripheral_url(@peripheral)
    assert_response :success
  end

  test 'should update peripheral' do
    patch peripheral_url(@peripheral),
          params: { peripheral: { brand: @peripheral.brand, colaborator_id: @peripheral.colaborator_id,
                                  description: @peripheral.description, headquarter_id: @peripheral.headquarter_id, model: @peripheral.model, serial: @peripheral.serial, type_id: @peripheral.type_id } }
    assert_redirected_to peripheral_url(@peripheral)
  end

  test 'should destroy peripheral' do
    assert_difference('Peripheral.count', -1) do
      delete peripheral_url(@peripheral)
    end

    assert_redirected_to peripherals_url
  end
end
