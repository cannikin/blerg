require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:first)
  end

  test "should get index" do
    get post_comments_url(@comment.post)
    assert_response :success
  end

  test "should get new" do
    get new_post_comment_url(@comment.post)
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post post_comments_url(@comment.post), params: { comment: { body: @comment.body, email: @comment.email, name: @comment.name, post_id: @comment.post_id } }
    end

    assert_redirected_to post_comment_path(Comment.last.post, Comment.last)
  end

  test "should show comment" do
    get post_comment_url(@comment.post, @comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_comment_url(@comment.post, @comment)
    assert_response :success
  end

  test "should update comment" do
    patch post_comment_url(@comment.post, @comment), params: { comment: { body: @comment.body, email: @comment.email, name: @comment.name, post_id: @comment.post_id } }
    assert_redirected_to post_comment_path(@comment.post, @comment)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete post_comment_url(@comment.post, @comment)
    end

    assert_redirected_to post_comments_path(@comment.post)
  end
end
