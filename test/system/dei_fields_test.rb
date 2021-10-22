require "application_system_test_case"

class DeiFieldsTest < ApplicationSystemTestCase
  setup do
    @dei_field = dei_fields(:one)
  end

  test "visiting the index" do
    visit dei_fields_url
    assert_selector "h1", text: "Dei Fields"
  end

  test "creating a Dei field" do
    visit dei_fields_url
    click_on "New Dei Field"

    fill_in "Dei category", with: @dei_field.dei_category_id
    fill_in "Name", with: @dei_field.name
    click_on "Create Dei field"

    assert_text "Dei field was successfully created"
    click_on "Back"
  end

  test "updating a Dei field" do
    visit dei_fields_url
    click_on "Edit", match: :first

    fill_in "Dei category", with: @dei_field.dei_category_id
    fill_in "Name", with: @dei_field.name
    click_on "Update Dei field"

    assert_text "Dei field was successfully updated"
    click_on "Back"
  end

  test "destroying a Dei field" do
    visit dei_fields_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dei field was successfully destroyed"
  end
end
