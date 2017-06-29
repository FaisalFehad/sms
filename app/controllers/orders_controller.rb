class OrdersController < ApplicationController
  before_action :authenticate_user!, :only => [:history]

  def history
    @orders =current_user.orders
  end

end
