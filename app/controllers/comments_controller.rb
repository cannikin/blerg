class CommentsController < ApplicationController

  before_action :require_session, :only => [:destroy]
  before_action :set_post
  before_action :set_comment, only: [:destroy]

  # POST /comments
  def create
    @comment = Comment.new(comment_params)
    @comment.post = @post

    if @comment.save!
      redirect_to @post, notice: 'Your comment was added!'
    else
      render @post
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
    redirect_to post_url(@post), notice: 'Comment was successfully destroyed.'
  end

private

  def set_post
    @post = Post.find(params[:post_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def comment_params
    params.require(:comment).permit(:post_id, :name, :email, :body)
  end

end
