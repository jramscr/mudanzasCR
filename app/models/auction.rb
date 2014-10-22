class Auction < ActiveRecord::Base
  def create(startTime, endTime, typePackage, pickDirection, pickTime, deliverDirection, deliverTime, budget, image)
    @start_auction_time = startTime
    @end_auction_time = endTime
    @type_of_package = typePackage
    @direction_to_pick = pickDirection
    @pick_up_time = pickTime
    @direction_to_deliver = deliverDirection
    @deliver_time = deliverTime
    @budget = budget
    @image_file = image
  end
end
