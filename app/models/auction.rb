class Auction < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection
    belongs_to :user

    validates :start_auction_at,:end_auction_at, :hour_to_pick, :direction_to_pick, :hour_to_deliver, :direction_to_deliver, :budget , presence: true
    validates :budget , numericality: {only_integer: true}
    validates :start_auction_at, numericality: {greater_than_or_equal_to: 1, less_than: 24}
    validates :end_auction_at, numericality: {greater_than: :start_auction_at}
    validates :hour_to_deliver, numericality: {greater_than: :hour_to_pick}
end
