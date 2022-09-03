class UsersController < ApplicationController
  def index
    @user= User.all
  end

  def show
    @user= User.find(params[:id])
  end

  def edit
    @user= User.find(params[:id])
  end

  def update
    @user= User.find(params[:id])
    @uset= update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name,:Introduction,:image)
  end

end
