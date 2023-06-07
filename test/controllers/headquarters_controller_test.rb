require "test_helper"

class HeadquartersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headquarter = headquarters(:one)
  end

  test "should get index" do
    get headquarters_url
    assert_response :success
  end

  test "should get new" do
    get new_headquarter_url
    assert_response :success
  end

  test "should create headquarter" do
    assert_difference("Headquarter.count") do
      post headquarters_url, params: { headquarter: { adress: @headquarter.adress, name: @headquarter.name } }
    end

    assert_redirected_to headquarter_url(Headquarter.last)
  end

  test "should show headquarter" do
    get headquarter_url(@headquarter)
    assert_response :success
  end

  test "should get edit" do
    get edit_headquarter_url(@headquarter)
    assert_response :success
  end

  test "should update headquarter" do
    patch headquarter_url(@headquarter), params: { headquarter: { adress: @headquarter.adress, name: @headquarter.name } }
    assert_redirected_to headquarter_url(@headquarter)
  end

  test "should destroy headquarter" do
    assert_difference("Headquarter.count", -1) do
      delete headquarter_url(@headquarter)
    end

    assert_redirected_to headquarters_url
  end
end
