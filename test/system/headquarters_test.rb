# frozen_string_literal: true

require 'application_system_test_case'

class HeadquartersTest < ApplicationSystemTestCase
  setup do
    @headquarter = headquarters(:one)
  end

  test 'visiting the index' do
    visit headquarters_url
    assert_selector 'h1', text: 'Headquarters'
  end

  test 'should create headquarter' do
    visit headquarters_url
    click_on 'New headquarter'

    fill_in 'Adress', with: @headquarter.adress
    fill_in 'Name', with: @headquarter.name
    click_on 'Create Headquarter'

    assert_text 'Headquarter was successfully created'
    click_on 'Back'
  end

  test 'should update Headquarter' do
    visit headquarter_url(@headquarter)
    click_on 'Edit this headquarter', match: :first

    fill_in 'Adress', with: @headquarter.adress
    fill_in 'Name', with: @headquarter.name
    click_on 'Update Headquarter'

    assert_text 'Headquarter was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Headquarter' do
    visit headquarter_url(@headquarter)
    click_on 'Destroy this headquarter', match: :first

    assert_text 'Headquarter was successfully destroyed'
  end
end
