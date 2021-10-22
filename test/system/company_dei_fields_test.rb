require "application_system_test_case"

class CompanyDeiFieldsTest < ApplicationSystemTestCase
  setup do
    @company_dei_field = company_dei_fields(:one)
  end

  test "visiting the index" do
    visit company_dei_fields_url
    assert_selector "h1", text: "Company Dei Fields"
  end

  test "creating a Company dei field" do
    visit company_dei_fields_url
    click_on "New Company Dei Field"

    fill_in "Company", with: @company_dei_field.company_id
    fill_in "Dei field", with: @company_dei_field.dei_field_id
    click_on "Create Company dei field"

    assert_text "Company dei field was successfully created"
    click_on "Back"
  end

  test "updating a Company dei field" do
    visit company_dei_fields_url
    click_on "Edit", match: :first

    fill_in "Company", with: @company_dei_field.company_id
    fill_in "Dei field", with: @company_dei_field.dei_field_id
    click_on "Update Company dei field"

    assert_text "Company dei field was successfully updated"
    click_on "Back"
  end

  test "destroying a Company dei field" do
    visit company_dei_fields_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company dei field was successfully destroyed"
  end
end
