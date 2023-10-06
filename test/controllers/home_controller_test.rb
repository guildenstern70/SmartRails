#
# Project SmartRails
# Copyright (c) 2023 Alessio Saltarin
# License MIT
#

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get home_home_url
    assert_response :success
  end
end
