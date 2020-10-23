#
# SmartRails
# Ruby on Rails Project
# (C) Alessio Saltarin 2020
# MIT License
#


class HomeController < ApplicationController

  def home
    logger.info('Home Controller - page: home')
  end

  def services
    logger.info('Home Controller - page: services')
  end

  def about
    logger.info('Home Controller - page: about')
  end

end
