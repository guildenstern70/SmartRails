#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

class HomeController < ApplicationController
  def home
    logger.info('Home Controller - page: home')
  end

  def services
    logger.info('Home Controller - page: services')
  end
end
