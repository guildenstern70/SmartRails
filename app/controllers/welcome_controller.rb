#
# Welcome controller
#
class WelcomeController < ApplicationController
  def index
    logger.info('Welcome Controller - page: index')
  end
end
