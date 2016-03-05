class PostsController < ApplicationController

  before_action :require_session, :except => [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.includes(:comments).order(:created_at => :desc)
  end

  def show
    @new_comment = Comment.new(:post => @post)
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private def set_post
    @post = Post.includes(:comments).find(params[:id])
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end

end
