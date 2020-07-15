class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    if @user.save
      redirect_to edit_user_path
    else
      render :edit
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.save
      redirect_to edit_user_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :id)
  end
end
