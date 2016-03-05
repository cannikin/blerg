require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should get create" do
    post sessions_url
    assert_response :success
  end

  test "should get destroy" do
    delete session_url(1)
    assert_response :success
  end

end
