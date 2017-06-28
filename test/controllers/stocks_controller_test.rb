require 'test_helper'

class StocksControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Stationery Management System"
  end

  test 'should get home' do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test 'should be redirected from new to sign in unless its an admin' do
    get new_stock_url
    assert_redirected_to new_admin_session_url
  end
end
