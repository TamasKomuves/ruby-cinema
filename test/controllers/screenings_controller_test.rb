require 'test_helper'

class ScreeningsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get screenings_show_url
    assert_response :success
  end

end
