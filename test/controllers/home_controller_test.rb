#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get about only when logged in" do
    get about_url
    assert_redirected_to new_session_path

    sign_in_as(User.take)
    get about_url
    assert_response :success
  end

  test "should get contact only when logged in" do
    get contact_url
    assert_redirected_to new_session_path

    sign_in_as(User.take)
    get contact_url
    assert_response :success
  end

  test "should get more" do
    get home_more_url
    assert_response :success
    assert_select "h1", "More about SmartRails"
    assert_select "li", "Ruby on Rails 8"
    assert_select "li", "Ruby v.4"
    assert_select "li", "Bulma CSS Framework"
  end
end
