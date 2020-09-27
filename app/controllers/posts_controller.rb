class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[index show]
  before_action :set_posts, only: %i[show edit update destroy]

  def index
    @posts = Post.order(created_at: :desc).page params[:page]
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def set_posts
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :subtitle, :content, :photo)
  end
end
