class Admin::UsersController < ApplicationController
  def new
    @user = User.new
    @roles = Role.all
  end

  def create
  end

  def edit
  end

  def update
  end
end
