require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest

  test "should not get index without login" do
    get tickets_url
    assert_response :found
  end
end
