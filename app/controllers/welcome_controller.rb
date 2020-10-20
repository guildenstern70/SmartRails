#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#


class WelcomeController < ApplicationController

  def index
    @app_version = '0.1'
    logger.info('Welcome Controller - page: index')
  end

end
