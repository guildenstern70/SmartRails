#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2021
# MIT License
#

class UsersController < ApplicationController

  #
  # Called on Sign Up GET
  #
  def new
    @user = User.new
  end

  #
  # Called on Sign Up POST
  #
  def create
    @user = User.create(params.require(:user).permit(:username,
                                                     :password, :password_confirmation))
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to '/home/home'
    else
      logger.info(@user.errors.messages)
      render :new
    end
  end
end
