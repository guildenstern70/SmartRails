#
# Project SmartRails
# Copyright (c) 2023-26 Alessio Saltarin
# License MIT - see LICENSE
#

require "test_helper"

class Settings::ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    sign_in_as(@user)
  end

  test "should get show" do
    get settings_profiles_url
    assert_response :success
    assert_select "h1", "Profile"
    assert_select "input#username-readonly[disabled][value=?]", @user.username
    assert_select "input[name='user[name]']"
    assert_select "input[name='user[surname]']"
    assert_select "a", "Change password"
    assert_select "nav.navbar" # Ensure template is used
  end

  test "should update profile" do
    patch settings_profiles_url, params: { user: { name: "NewName", surname: "NewSurname" } }
    assert_redirected_to settings_profiles_url
    follow_redirect!
    assert_select ".notification", "Profile updated successfully."
    @user.reload
    assert_equal "NewName", @user.name
    assert_equal "NewSurname", @user.surname
  end
end
