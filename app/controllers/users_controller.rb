class UsersController < ApplicationController

  def show
    @user = current_user || User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def destroy

    @user = current_user || User.find(params[:id])
    @user.destroy

  end
end
