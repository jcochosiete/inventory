require "application_system_test_case"

class ColaboratorsTest < ApplicationSystemTestCase
  setup do
    @colaborator = colaborators(:one)
  end

  test "visiting the index" do
    visit colaborators_url
    assert_selector "h1", text: "Colaborators"
  end

  test "should create colaborator" do
    visit colaborators_url
    click_on "New colaborator"

    fill_in "Adress", with: @colaborator.adress
    fill_in "Email", with: @colaborator.email
    fill_in "Lastname", with: @colaborator.lastname
    fill_in "Name", with: @colaborator.name
    fill_in "Number", with: @colaborator.number
    fill_in "Profile", with: @colaborator.profile
    check "Status" if @colaborator.status
    click_on "Create Colaborator"

    assert_text "Colaborator was successfully created"
    click_on "Back"
  end

  test "should update Colaborator" do
    visit colaborator_url(@colaborator)
    click_on "Edit this colaborator", match: :first

    fill_in "Adress", with: @colaborator.adress
    fill_in "Email", with: @colaborator.email
    fill_in "Lastname", with: @colaborator.lastname
    fill_in "Name", with: @colaborator.name
    fill_in "Number", with: @colaborator.number
    fill_in "Profile", with: @colaborator.profile
    check "Status" if @colaborator.status
    click_on "Update Colaborator"

    assert_text "Colaborator was successfully updated"
    click_on "Back"
  end

  test "should destroy Colaborator" do
    visit colaborator_url(@colaborator)
    click_on "Destroy this colaborator", match: :first

    assert_text "Colaborator was successfully destroyed"
  end
end
