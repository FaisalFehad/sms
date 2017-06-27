class StocksController < ApplicationController

  def index
    @items = Stock.all.order('created_at DESC')
  end
end
