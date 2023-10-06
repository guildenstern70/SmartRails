

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'Users are in the database' do
    users = User.all
    puts "Users are #{String(users.length)}"
    assert users.length == 2
  end
end
