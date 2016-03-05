class CommentsController < ApplicationController

  before_action :require_session, :only => [:destroy]
  before_action :set_post
  before_action :set_comment, only: [:destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.post = @post

    if @comment.save!
      redirect_to @post, notice: 'Your comment was added!'
    else
      render @post
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_url(@post), notice: 'Comment was successfully destroyed.'
  end

  private def set_post
    @post = Post.find(params[:post_id])
  end

  private def set_comment
    @comment = Comment.find(params[:id])
  end

  private def comment_params
    params.require(:comment).permit(:name, :email, :body)
  end

end
