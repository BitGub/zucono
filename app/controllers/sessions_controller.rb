class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to products_path
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to root_path
    end
  end

  def destroy
  end
end
