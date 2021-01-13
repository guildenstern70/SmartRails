#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2021
# MIT License
#


class WelcomeController < ApplicationController

  def index
    @app_version = '0.1'
    @environment = environment
    logger.info('Welcome Controller - page: index')
  end

end
