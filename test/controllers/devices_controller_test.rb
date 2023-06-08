require "test_helper"

class DevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get devices_url
    assert_response :success
  end

  test "should get new" do
    get new_device_url
    assert_response :success
  end

  test "should create device" do
    assert_difference("Device.count") do
      post devices_url, params: { device: { brand: @device.brand, colaborator_id: @device.colaborator_id, headquarter_id: @device.headquarter_id, memory: @device.memory, model: @device.model, processor: @device.processor, serial: @device.serial, status: @device.status, storage: @device.storage } }
    end

    assert_redirected_to device_url(Device.last)
  end

  test "should show device" do
    get device_url(@device)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_url(@device)
    assert_response :success
  end

  test "should update device" do
    patch device_url(@device), params: { device: { brand: @device.brand, colaborator_id: @device.colaborator_id, headquarter_id: @device.headquarter_id, memory: @device.memory, model: @device.model, processor: @device.processor, serial: @device.serial, status: @device.status, storage: @device.storage } }
    assert_redirected_to device_url(@device)
  end

  test "should destroy device" do
    assert_difference("Device.count", -1) do
      delete device_url(@device)
    end

    assert_redirected_to devices_url
  end
end
