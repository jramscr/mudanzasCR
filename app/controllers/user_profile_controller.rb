class UserProfileController < ApplicationController
  def show
    @auctions_list = Auction.where(user_id: session[:user_id])
  end

end
