#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#

class SessionsController < ApplicationController

  #
  # Called on Login GET
  #
  def new
    logger.info('Sessions controller - new')
  end

  #
  # Create new session: called on Login POST
  #
  def create
    @errors = false
    logger.info('Sessions controller - create new session for user ' + params[:username])
    @user = User.find_by(username: params[:username])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/home/home'
    else
      @errors = true
      render :new
    end
  end

  #
  # Called on Logout GET
  #
  def logout
    logger.info('Sessions controller - logout')
    if logged_in?
      logger.info('Logging out ' + current_user.username)
      session[:user_id] = nil
    end
    redirect_to '/welcome/index'
  end

end
