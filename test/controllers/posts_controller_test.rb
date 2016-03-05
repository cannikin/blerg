require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:welcome)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "#new should require a session" do
    get new_post_url
    assert_redirected_to login_url
  end

  test "should get new" do
    login

    get new_post_url
    assert_response :success
  end

  test "#create should require a session" do
    assert_no_difference('Post.count') do
      post posts_url, params: { post: { body: @post.body, title: @post.title, user_id: @post.user_id } }
    end

    assert_redirected_to login_url
  end

  test "should create post" do
    login

    assert_difference('Post.count') do
      post posts_url, params: { post: { body: @post.body, title: @post.title, user_id: @post.user_id } }
    end

    assert_redirected_to post_path(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "#edit should require a session" do
    get edit_post_url(@post)
    assert_redirected_to login_url
  end

  test "should get edit" do
    login

    get edit_post_url(@post)
    assert_response :success
  end

  test "#update should require a session" do
    patch post_url(@post), params: { post: { body: @post.body, title: @post.title, user_id: @post.user_id } }
    assert_redirected_to login_url
  end

  test "should update post" do
    login

    patch post_url(@post), params: { post: { body: @post.body, title: @post.title, user_id: @post.user_id } }
    assert_redirected_to post_path(@post)
  end

  test "#destroy should require a session" do
    assert_no_difference('Post.count', -1) do
      delete post_url(@post)
    end
    assert_redirected_to login_url
  end

  test "should destroy post" do
    login

    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_path
  end

end
