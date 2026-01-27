#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

class HomeController < ApplicationController
  allow_unauthenticated_access only: %i[ index more ]
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
end
