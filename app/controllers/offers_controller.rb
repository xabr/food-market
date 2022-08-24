class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def show
    @offer = Offer.find(params[:id])
  end


  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
  end

  def destroy
    @offer = Offer.find(offer_params)
    @offer.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def offer_params
    params.require(:offer).permit(:meal_name, :meal_description, :portions, :price, :img_url, :user, :available_at)
  end
end
