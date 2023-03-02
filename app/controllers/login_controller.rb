# frozen_string_literal: true

#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

class LoginController < ApplicationController
  def login
    logger.info('Login Controller - page: login')
  end

  def new
    @errors = false
    logger.info("LoginController - create new session for user: #{params[:username]}")
    @user = User.find_by(username: params[:username])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/home/home'
    else
      @errors = true
      render :login
    end
  end

  def profile
    logger.info('LoginController controller - profile')
  end

  def logout
    logger.info('LoginController controller - logout')
    if logged_in?
      logger.info("Logging out #{current_user.username}")
      session[:user_id] = nil
    end
    redirect_to '/home/home'
  end
end
