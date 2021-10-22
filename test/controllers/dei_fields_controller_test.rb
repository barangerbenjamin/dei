require "test_helper"

class DeiFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dei_field = dei_fields(:one)
  end

  test "should get index" do
    get dei_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_dei_field_url
    assert_response :success
  end

  test "should create dei_field" do
    assert_difference('DeiField.count') do
      post dei_fields_url, params: { dei_field: { dei_category_id: @dei_field.dei_category_id, name: @dei_field.name } }
    end

    assert_redirected_to dei_field_url(DeiField.last)
  end

  test "should show dei_field" do
    get dei_field_url(@dei_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_dei_field_url(@dei_field)
    assert_response :success
  end

  test "should update dei_field" do
    patch dei_field_url(@dei_field), params: { dei_field: { dei_category_id: @dei_field.dei_category_id, name: @dei_field.name } }
    assert_redirected_to dei_field_url(@dei_field)
  end

  test "should destroy dei_field" do
    assert_difference('DeiField.count', -1) do
      delete dei_field_url(@dei_field)
    end

    assert_redirected_to dei_fields_url
  end
end
