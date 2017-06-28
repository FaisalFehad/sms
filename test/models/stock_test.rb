require 'test_helper'

class StockTest < ActiveSupport::TestCase

  def setup
    @my_item =  Stock.new(name: "An item", description: "this is my very cool item description", admin_id: 1)
  end

  test 'should not save item without a name' do
    @my_item.name = ""
    assert_not @my_item.valid?
  end

  test 'should not save an item with very long description ' do
    @my_item.description = "a" * 600
    assert_not @my_item.valid?
  end
end
