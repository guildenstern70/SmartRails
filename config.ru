#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
Rails.application.load_server
