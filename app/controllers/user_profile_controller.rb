class UserProfileController < ApplicationController
  def show
    @auctions_list = Auction.all
  end
end
