class AuctionsController < ApplicationController
  def new
    @auction = Auction.new
  end
  def create
    @auction = Auction.new(params[:auction])
    if @auction.save
      flash[:alert] = "Auction request create. Wait for results!"
      redirect_to user_profile_path
    else
      render :auction => "new"
    end
  end
end
