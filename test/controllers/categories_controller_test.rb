require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  test "should not get admin_index without login" do
    get categories_admin_index_url
    assert_response :found
  end

  test "should not get edit without login" do
    get edit_category_path(id: 1)
    assert_response :found
  end

  test "should not get new without login" do
    get new_category_path(id: 1)
    assert_response :found
  end
end
