class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end
  
  private
    
  def user_params
    params.require(:user).permit(:first_name, :surname, :email, :role_id, :password, :password_confirmation)
  end
end
