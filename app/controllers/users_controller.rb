class UsersController < ApplicationController

  def index
    @book= Book.new
    @user= User.all
  end

  def show
    @user= User.find(params[:id])
    @books=@user.books
    @book= Book.new
  end

  def edit
    @user= User.find(params[:id])
    flash[:notice]= 'You have updated user successfully.'
  end

  def update
    @user= User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user.id)
    else
      render :edit
    end

  end

  private

  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end

end
