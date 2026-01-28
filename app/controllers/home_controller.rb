#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

class HomeController < ApplicationController
  allow_unauthenticated_access only: %i[index more]
  before_action :set_current_page, only: %i[home about contact]

  def index
  end

  def about
  end

  def home
  end

  def contact
  end

  def more
  end

  private

  def set_current_page
    page_name = action_name
    session[:currentpage] = page_name
    Current.session&.update(currentpage: page_name)
  end
end
