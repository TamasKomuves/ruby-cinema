require 'test_helper'

class ScreeningsControllerTest < ActionDispatch::IntegrationTest

  test "should not get index without login" do
    get screenings_index_url
    assert_response :found
  end

  test "should not get admin index without login" do
    get screenings_admin_index_url
    assert_response :found
  end

  test "should not get edit without login" do
    get screenings_edit_url
    assert_response :found
  end
end
