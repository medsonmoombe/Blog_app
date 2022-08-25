class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @user_posts = Post.where(author_id: params[:user_id]).order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @posts = Post.new(posts_params)
    if @post.save
      redirect_to user_post_path(id: @post.id, user_id: @post.author_id), notice: 'Post created succesfully!'
    else
      render :new, alert: 'Post could not be created an Error occurred!'
    end
  end

  private

  def posts_params
    params.require(:post).permit(:title, :text, :author_id)
  end
end
