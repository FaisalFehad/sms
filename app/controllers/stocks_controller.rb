class StocksController < ApplicationController
   before_action :authenticate_admin!, :except => [:index, :show]

  def index
    @items = Stock.all.order('created_at DESC')
  end

  def new
    @item = current_admin.stocks.new
  end

  def create
    @item = current_admin.stocks.new(stock_params)
    if @item.save
       flash[:notice] = "A #{@item.name} has been listed."
       redirect_to root_path
    else
      flash[:alart] = "Error: Make sure that you submitting valid information"
    end
  end

  def update
    @item = Stock.find(params[:id])
    if @item.update
      flash[:notice] = "#{@item.name} has been updated."
      render @item
    else
      render 'edit'
    end
  end

  def show
    find_item
  end

  def edit
    find_item
  end

  def destroy
    find_item
    if @item.destroy
      redirect_to root_path
      flash[:notice] = "#{@item.name} has been deleted."
    else
      flash[:alert] = "#{@item.name} could not be deleted."
    end
  end

  private

  def find_item
    @item = Stock.find(params[:id])
  end

  def stock_params
    params.fetch(:stock).permit(:name, :description, :image, :fixed)
  end
end
