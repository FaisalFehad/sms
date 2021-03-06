class OrdersController < ApplicationController
  before_action :authenticate_user!, :except => [:index]


  def history
    @orders = current_user.orders.paginate(:page => params[:page], :per_page => 4)
  end

  def create
    order = Order.new
    order.user_id = params[:user]
    order.stock_id = params[:stock_id]

    if order.save
      redirect_to history_path
      flash[:notice] = "Your order has been created!"
    else
      render root_path
      flash[:alert] = "Error: Your order didn't get save submitted."
    end
  end

  def return
    order = Order.new
    order = Order.find(params[:order])
    order.returned  = true
    if order.save
      redirect_back(fallback_location: history_path)
      flash[:notice] = "Thank you for returing the item!"
    else
      redirect_back(fallback_location: history_path)
      flash[:alert] = "Error: Your has not been returned."
    end
  end
end
