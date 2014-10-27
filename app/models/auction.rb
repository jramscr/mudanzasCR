class Auction < ActiveRecord::Base
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  def auction_params
    params.require(:auctions).permit(:start_hour, :start_minute, :end_hour, :end_minute, :kind_of_ware, :pick_direction,:pick_hour, :pick_minute, :deliver_direction, :deliver_hour, :deliver_minute, :budget, :image)
  end

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
