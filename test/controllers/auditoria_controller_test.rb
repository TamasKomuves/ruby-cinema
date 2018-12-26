require 'test_helper'

class AuditoriaControllerTest < ActionDispatch::IntegrationTest

  test "should not get admin_index without login" do
    get auditoria_admin_index_url
    assert_response :found
  end

  test "should not get edit without login" do
    get edit_auditorium_url(id: 1)
    assert_response :found
  end

  test "should not get new without login" do
    get new_auditorium_url(id: 1)
    assert_response :found
  end
end
