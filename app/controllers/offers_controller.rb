class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to root
    else
      raise
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:meal_name, :meal_description, :portions, :price, :img_url, :user, :available_at)
  end
end
