require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @comment = comments(:first)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post post_comments_url(@comment.post), params: { comment: { body: @comment.body, email: @comment.email, name: @comment.name, post_id: @comment.post_id } }
    end

    assert_redirected_to post_path(@comment.post)
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete post_comment_url(@comment.post, @comment)
    end

    assert_redirected_to post_path(@comment.post)
  end

end
