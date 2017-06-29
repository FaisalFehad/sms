require 'test_helper'

class StockTest < ActiveSupport::TestCase

  def setup
    @my_item =  Stock.new(name: "An item", description: "this is my very cool item description", admin_id: 1)
    @long_string = "a" * 1000
    @invalid_names = %w[ nil ," ", "a",  "#long_string"]
    @invalid_descriptions = @invalid_names + ["aaaa"]
  end


  test 'should be invalid names' do
    @invalid_names.each do |invalid_name|
      @my_item.name = invalid_name
      assert_not @my_item.valid?
    end
  end

  test 'should be invalid descriptions' do
    @invalid_descriptions.each do |invalid_description|
      @my_item.description = invalid_description
      assert_not @my_item.valid?
    end
  end
end
