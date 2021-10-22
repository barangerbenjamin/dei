require "test_helper"

class DeiCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dei_category = dei_categories(:one)
  end

  test "should get index" do
    get dei_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_dei_category_url
    assert_response :success
  end

  test "should create dei_category" do
    assert_difference('DeiCategory.count') do
      post dei_categories_url, params: { dei_category: { name: @dei_category.name } }
    end

    assert_redirected_to dei_category_url(DeiCategory.last)
  end

  test "should show dei_category" do
    get dei_category_url(@dei_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_dei_category_url(@dei_category)
    assert_response :success
  end

  test "should update dei_category" do
    patch dei_category_url(@dei_category), params: { dei_category: { name: @dei_category.name } }
    assert_redirected_to dei_category_url(@dei_category)
  end

  test "should destroy dei_category" do
    assert_difference('DeiCategory.count', -1) do
      delete dei_category_url(@dei_category)
    end

    assert_redirected_to dei_categories_url
  end
end
