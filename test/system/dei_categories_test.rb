require "application_system_test_case"

class DeiCategoriesTest < ApplicationSystemTestCase
  setup do
    @dei_category = dei_categories(:one)
  end

  test "visiting the index" do
    visit dei_categories_url
    assert_selector "h1", text: "Dei Categories"
  end

  test "creating a Dei category" do
    visit dei_categories_url
    click_on "New Dei Category"

    fill_in "Name", with: @dei_category.name
    click_on "Create Dei category"

    assert_text "Dei category was successfully created"
    click_on "Back"
  end

  test "updating a Dei category" do
    visit dei_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @dei_category.name
    click_on "Update Dei category"

    assert_text "Dei category was successfully updated"
    click_on "Back"
  end

  test "destroying a Dei category" do
    visit dei_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dei category was successfully destroyed"
  end
end
