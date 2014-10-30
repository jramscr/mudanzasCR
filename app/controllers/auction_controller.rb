class AuctionController < ApplicationController
  def new
  end

  def create
    # El render nos permite ver los parametros introducidos en el formulario.
    # render :text => params[:auction].inspect
    @auction = Auction.new(auction_params)

    @auction.save
    redirect_to @auction
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def read
  end

  def destroy
  end

  def update
  end

private
  def auction_params
    params.require(:auction).permit(:start_auction_at, :end_auction_at, :day_to_pick, :hour_to_pick, :direction_to_pick, :day_to_deliver, :hour_to_deliver, :direction_to_deliver, :budget, :kind_of_package)
  end
end
