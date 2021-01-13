#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2021
# MIT License
#

class ApplicationController < ActionController::Base
  layout 'application'

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
