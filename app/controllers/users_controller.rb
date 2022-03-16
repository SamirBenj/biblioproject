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
      @users.destroy 
      redirect_to root_path
  end
end
