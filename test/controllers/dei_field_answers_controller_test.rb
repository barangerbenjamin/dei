require "test_helper"

class DeiFieldAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dei_field_answer = dei_field_answers(:one)
  end

  test "should get index" do
    get dei_field_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_dei_field_answer_url
    assert_response :success
  end

  test "should create dei_field_answer" do
    assert_difference('DeiFieldAnswer.count') do
      post dei_field_answers_url, params: { dei_field_answer: { dei_field_id: @dei_field_answer.dei_field_id, encrypted_answer: @dei_field_answer.encrypted_answer, encrypted_answer_iv: @dei_field_answer.encrypted_answer_iv, user_id: @dei_field_answer.user_id } }
    end

    assert_redirected_to dei_field_answer_url(DeiFieldAnswer.last)
  end

  test "should show dei_field_answer" do
    get dei_field_answer_url(@dei_field_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_dei_field_answer_url(@dei_field_answer)
    assert_response :success
  end

  test "should update dei_field_answer" do
    patch dei_field_answer_url(@dei_field_answer), params: { dei_field_answer: { dei_field_id: @dei_field_answer.dei_field_id, encrypted_answer: @dei_field_answer.encrypted_answer, encrypted_answer_iv: @dei_field_answer.encrypted_answer_iv, user_id: @dei_field_answer.user_id } }
    assert_redirected_to dei_field_answer_url(@dei_field_answer)
  end

  test "should destroy dei_field_answer" do
    assert_difference('DeiFieldAnswer.count', -1) do
      delete dei_field_answer_url(@dei_field_answer)
    end

    assert_redirected_to dei_field_answers_url
  end
end
