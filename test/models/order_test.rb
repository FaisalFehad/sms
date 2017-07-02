require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  test 'should be empty' do
    assert( order = Order.count, [true])
  end

  test 'should make valid orders' do
    order = Order.new
    user = users(:my_user)
    stock = stocks(:item)
    check = user.orders.new(user_id: user.id, stock_id: stock.id)
    assert check.valid?
  end
end
