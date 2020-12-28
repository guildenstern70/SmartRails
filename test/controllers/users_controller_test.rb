require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get users_new_url
    assert_response :success
  end

  test 'should create new user' do
    post users_create_url, params: { user:
                                       { username: 'pippo',
                                         password: 'prova',
                                         password_confirmation: 'prova' } }
    assert_redirected_to controller: 'home', action: 'home'
  end

end
