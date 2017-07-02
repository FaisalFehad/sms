class AdminPanelController < ApplicationController
  before_action :authenticate_admin!

  def orders
    @orders = Order.all.order('created_at DESC')
  end

  def users
    @users = User.all.order('email ASC')
  end
end
