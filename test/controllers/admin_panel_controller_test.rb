require 'test_helper'

class AdminPanelControllerTest < ActionDispatch::IntegrationTest
  test "should get orders" do
    get admin_panel_orders_url
    assert_response :success
  end

  test "should get users" do
    get admin_panel_users_url
    assert_response :success
  end

end
