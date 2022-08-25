class OrdersController < ApplicationController
  before_action :authenticate_user!

  def show
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @user = current_user
    @order = Order.new(user: @user, offer: @offer)
    if @order.save
      redirect_to root_path
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
