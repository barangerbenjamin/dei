require "application_system_test_case"

class DeiFieldAnswersTest < ApplicationSystemTestCase
  setup do
    @dei_field_answer = dei_field_answers(:one)
  end

  test "visiting the index" do
    visit dei_field_answers_url
    assert_selector "h1", text: "Dei Field Answers"
  end

  test "creating a Dei field answer" do
    visit dei_field_answers_url
    click_on "New Dei Field Answer"

    fill_in "Dei field", with: @dei_field_answer.dei_field_id
    fill_in "Encrypted answer", with: @dei_field_answer.encrypted_answer
    fill_in "Encrypted answer iv", with: @dei_field_answer.encrypted_answer_iv
    fill_in "User", with: @dei_field_answer.user_id
    click_on "Create Dei field answer"

    assert_text "Dei field answer was successfully created"
    click_on "Back"
  end

  test "updating a Dei field answer" do
    visit dei_field_answers_url
    click_on "Edit", match: :first

    fill_in "Dei field", with: @dei_field_answer.dei_field_id
    fill_in "Encrypted answer", with: @dei_field_answer.encrypted_answer
    fill_in "Encrypted answer iv", with: @dei_field_answer.encrypted_answer_iv
    fill_in "User", with: @dei_field_answer.user_id
    click_on "Update Dei field answer"

    assert_text "Dei field answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Dei field answer" do
    visit dei_field_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dei field answer was successfully destroyed"
  end
end
