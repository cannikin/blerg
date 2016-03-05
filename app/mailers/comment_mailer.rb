class CommentMailer < ApplicationMailer

  default :from => 'noreply@blerg.com'

  def new_comment(comment)
    @comment = comment
    @post = @comment.post

    mail :to => ["#{@comment.name} <#{@comment.email}>"],
         :subject => "New comment posted to #{@post.title} on blerg.com"
  end

end
