class OrdersController < ApplicationController
  before_action :authenticate_user!

  def show
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.offer = @offer
    if @order.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def canceled
    @canceled = true
  end

  def confirmed
    @confirmed = true
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :offer_id)
  end
end
