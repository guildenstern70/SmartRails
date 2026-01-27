#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "downcases and strips username" do
    user = User.new(username: " USERNAME ")
    assert_equal("username", user.username)
  end
end
