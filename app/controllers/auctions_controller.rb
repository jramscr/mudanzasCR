class AuctionsController < ApplicationController
  def create_auction
    auction = Auction.new
    auction.save!
  end
end
