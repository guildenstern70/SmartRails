require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get sessions_new_url
    assert_response :success
  end

  test 'should create new session' do
    post sessions_create_url, params: { username: 'alessio', password: 'doctor' }
    assert_redirected_to controller: 'home', action: 'home'
  end

  test 'should get logout' do
    get sessions_logout_url
    assert_redirected_to controller: 'welcome', action: 'index'
  end

end
