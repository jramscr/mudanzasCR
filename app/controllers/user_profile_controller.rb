class UserProfileController < ApplicationController
  def show
    @auctions_list = Auction.where(user_id: current_user.id)
  end

end
