class UsersController < ApplicationController
  def index
    @users = User.order(:name) 
  end

  def show
    @user = find(params[:id])
    @recent_posts = @user.recent_posts
  end
end
