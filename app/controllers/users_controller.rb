class UsersController < ApplicationController

  def show
    @users = current_users || User.find(params[:id])
  end

  def index
    @users = User.all
  end

end
