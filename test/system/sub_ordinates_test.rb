require "application_system_test_case"

class SubOrdinatesTest < ApplicationSystemTestCase
  setup do
    @sub_ordinate = sub_ordinates(:one)
  end

  test "visiting the index" do
    visit sub_ordinates_url
    assert_selector "h1", text: "Sub Ordinates"
  end

  test "creating a Sub ordinate" do
    visit sub_ordinates_url
    click_on "New Sub Ordinate"

    fill_in "Manager", with: @sub_ordinate.manager_id
    fill_in "Name", with: @sub_ordinate.name
    click_on "Create Sub ordinate"

    assert_text "Sub ordinate was successfully created"
    click_on "Back"
  end

  test "updating a Sub ordinate" do
    visit sub_ordinates_url
    click_on "Edit", match: :first

    fill_in "Manager", with: @sub_ordinate.manager_id
    fill_in "Name", with: @sub_ordinate.name
    click_on "Update Sub ordinate"

    assert_text "Sub ordinate was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub ordinate" do
    visit sub_ordinates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub ordinate was successfully destroyed"
  end
end
