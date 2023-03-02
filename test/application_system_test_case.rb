# frozen_string_literal: true

#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
