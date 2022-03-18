class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy
    # redirect_to user_destroy_
  end

  private
  def set_user
    @users = User.find(params [:id])
  end

  def user_params 
    params.require(:user).permit(:email,:password)
  end
end
