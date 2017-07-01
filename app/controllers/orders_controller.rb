class OrdersController < ApplicationController
  before_action :authenticate_user!, :except => [:index]


  def history
    @orders = current_user.orders.order('created_at DESC')
  end

  def create
    order = Order.new
    order.user_id = params[:user]
    order.stock_id = params[:stock_id]
    order.save
    if true
      redirect_to :root
    end
  end
end
