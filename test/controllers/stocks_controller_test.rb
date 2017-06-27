require 'test_helper'

class StocksControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Stationery Management System"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
end
