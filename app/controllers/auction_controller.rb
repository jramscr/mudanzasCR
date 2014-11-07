class AuctionController < ApplicationController
  def new
    @auction = Auction.new
  end

  def create
    # El render nos permite ver los parametros introducidos en el formulario.
    # render :text => params[:auction].inspect
    @auction = Auction.new(auction_params)

    if @auction.save
        redirect_to user_profile_show_path
    else
      render "new"
    end
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def destroy
    @auction = Auction.find(params[:id])
    @auction.destroy

    redirect_to user_profile_show_path
  end

  def edit
    @auction = Auction.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:id])
    if @auction.update(auction_params)
      redirect_to user_profile_show_path
    else
      render 'edit'
    end
  end

private
  def auction_params
    params.require(:auction).permit(:user_id, :start_auction_at, :end_auction_at, :day_to_pick, :hour_to_pick, :direction_to_pick, :day_to_deliver, :hour_to_deliver, :direction_to_deliver, :budget, :kind_of_package)
  end
end
