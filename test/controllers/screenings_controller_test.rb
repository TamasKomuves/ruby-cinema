require 'test_helper'

class ScreeningsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get screenings_index_url
    assert_response :success
  end

end
