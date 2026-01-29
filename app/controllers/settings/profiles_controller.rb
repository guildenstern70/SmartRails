#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

class Settings::ProfilesController < ApplicationController
  before_action :set_current_page, only: %i[show]

  def show
  end

  def update
    if Current.user.update(profile_params)
      redirect_to settings_profiles_path, status: :see_other, notice: "Profile updated successfully."
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def set_current_page
    session[:currentpage] = "profile"
    Current.session&.update(currentpage: "profile")
  end

  def profile_params
    params.expect(user: [ :name, :surname ])
  end
end
