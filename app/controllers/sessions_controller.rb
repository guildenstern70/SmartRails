#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#

class SessionsController < ApplicationController
  def new
    logger.info('Sessions controller - new')
  end

  def create
    logger.info('Sessions controller - create')
    @user = User.find_by(username: params[:username])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def logout
    logger.info('Sessions controller - logout')
    if logged_in?
      logger.info('Logging out ' + current_user.username)
      session[:user_id] = nil
    end
    redirect_to '/welcome'
  end

  def login
    logger.info('Sessions controller - login')
  end
end
