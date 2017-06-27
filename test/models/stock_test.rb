require 'test_helper'

class StockTest < ActiveSupport::TestCase

  def setup
    @stock = Stock.new(name: "item1", description: "my item description")
  end

  test "sock should be valid" do
    assert @stock.valid?
  end
end
