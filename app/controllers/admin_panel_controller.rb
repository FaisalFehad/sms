class AdminPanelController < ApplicationController
  before_action :authenticate_admin!

  def orders
    @orders = Order.all.order('created_at DESC')
  end

  def users
    @users = User.all.order('email ASC').paginate(:page => params[:page], :per_page => 25)
  end

  def activation
    user = User.find_by(id: params[:user_id])
    if user.is_active?
      user.update(is_active: false)
      redirect_back(fallback_location: all_users_path)
      flash[:alert] = "User has been deactivated!"
    else
      user.update(is_active: true)
      redirect_back(fallback_location: all_users_path)
      flash[:alert] =  "User has been activated!"
    end
  end
end
