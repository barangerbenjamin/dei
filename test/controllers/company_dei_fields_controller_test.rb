require "test_helper"

class CompanyDeiFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_dei_field = company_dei_fields(:one)
  end

  test "should get index" do
    get company_dei_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_company_dei_field_url
    assert_response :success
  end

  test "should create company_dei_field" do
    assert_difference('CompanyDeiField.count') do
      post company_dei_fields_url, params: { company_dei_field: { company_id: @company_dei_field.company_id, dei_field_id: @company_dei_field.dei_field_id } }
    end

    assert_redirected_to company_dei_field_url(CompanyDeiField.last)
  end

  test "should show company_dei_field" do
    get company_dei_field_url(@company_dei_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_dei_field_url(@company_dei_field)
    assert_response :success
  end

  test "should update company_dei_field" do
    patch company_dei_field_url(@company_dei_field), params: { company_dei_field: { company_id: @company_dei_field.company_id, dei_field_id: @company_dei_field.dei_field_id } }
    assert_redirected_to company_dei_field_url(@company_dei_field)
  end

  test "should destroy company_dei_field" do
    assert_difference('CompanyDeiField.count', -1) do
      delete company_dei_field_url(@company_dei_field)
    end

    assert_redirected_to company_dei_fields_url
  end
end
