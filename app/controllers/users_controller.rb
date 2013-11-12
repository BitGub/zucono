class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :lock_out
  
  def admin_dashboard
  end
  
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
  
  def show
    @user = User.find(params[:id])
  end
  
  private
    
    def user_params
     params.require(:user).permit(:first_name, :surname, :email, :role_id, :password, :password_confirmation)
    end
  
    def set_user
      @user = User.find(params[:id])
    end
end
