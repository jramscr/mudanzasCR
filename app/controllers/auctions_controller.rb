class AuctionsController < ApplicationController
  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new(params[:auctions])
    if @auction.save
      flash[:alert] = "Auction request created. Wait for results!"
      redirect_to :action => :show, :id => @auction.id
    else
      render :auction => "new"
    end
  end

  def show
    @auction = Auction.find(params[:id])
  end
end
