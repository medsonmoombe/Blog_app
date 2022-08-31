class UsersController < ApplicationController
  def index
    @users = User.order(:name)
  end

  def show
    @user = User.find(params[:id])
    @recent_posts = @user.recent_posts

    if params[:id] = "sign_out"
      sign_out current_user
      return
    end
  end
end
