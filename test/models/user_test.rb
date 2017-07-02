require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'user accounts should be active by default' do
    active = users(:my_user)
    assert active.is_active?
  end

  test 'active_for_authentication? method should return true' do
    active = users(:my_user)
    assert active.active_for_authentication?
  end

  test 'should not be active ' do
    active = users(:disabled_user_account)
    assert_not active.is_active?
  end

  test 'active_for_authentication? method should return false' do
    active = users(:disabled_user_account)
    assert_not active.active_for_authentication?
  end
end
