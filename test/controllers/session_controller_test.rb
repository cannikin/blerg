require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_url
    assert_response :success
  end

  test "should get create" do
    post login_url, :params => { :email => users(:john).email, :password => 'blerg' }
    assert_redirected_to root_url
  end

  test "returns error if user email is bad" do
    post login_url, :params => { :email => 'notfound@example.com', :password => 'password' }
    assert_select '.alert'
    assert_match 'Email address not found', response.body
  end

  test "returns error if user password is bad" do
    post login_url, :params => { :email => users(:john).email, :password => 'password' }
    assert_select '.alert'
    assert_match 'Password incorrect', response.body
  end

  test "#destroy should require a session" do
    get logout_url
    assert_redirected_to login_url
  end

  test "should get destroy" do
    login

    get logout_url
    assert_redirected_to root_url
  end

end
