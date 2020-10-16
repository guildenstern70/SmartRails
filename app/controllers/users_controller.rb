#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:username,
                                                     :password, :password_confirmation))
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      logger.info(@user.errors.messages)
      render :new
    end
  end
end
