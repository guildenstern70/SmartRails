#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#


class WelcomeController < ApplicationController
  def index
    logger.info('Welcome Controller - page: index')
  end
end
