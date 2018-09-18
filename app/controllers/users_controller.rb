class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def index
  end

  def show
    redirect_to root_path if !logged_in?
    @user = User.find(params[:id])
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end