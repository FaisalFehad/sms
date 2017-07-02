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

  test "should get admin sing in page when not signed in as admin" do
    get new_admin_session_url
    assert_response :success
    assert_select "title", "Sign in | #{@base_title}"
  end

  test "should show item" do
    item_stock = stocks(:item)
    get "/stocks/#{item_stock.id}"
    assert_response :success
  end
end
