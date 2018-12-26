require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest

  test "should not get admin index without login" do
    get movies_admin_index_url
    assert_response :found
  end

  test "should not get edit without login" do
    get edit_movie_path(id: 1)
    assert_response :found
  end

  test "should not get new without login" do
    get new_movie_path(id: 1)
    assert_response :found
  end
end
