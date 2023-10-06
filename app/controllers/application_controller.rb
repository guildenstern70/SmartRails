#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    if session[:user_id].nil?
      nil
    else
      User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def environment
    Rails.env
  end
end
