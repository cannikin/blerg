require 'test_helper'

class CommentMailerTest < ActionMailer::TestCase
  test "new_comment" do
    comment = comments(:first)
    mail = CommentMailer.new_comment(comment)

    assert_equal "New comment posted to #{comment.post.title} on blerg.com", mail.subject
    assert_equal [comment.email], mail.to
    assert_equal ["noreply@blerg.com"], mail.from
    assert_match "posts/#{comment.post.id}#comment-#{comment.id}", mail.body.encoded
  end

end
