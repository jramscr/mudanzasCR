class Auction < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection
    belongs_to :user

    validates :direction_to_pick , presence: true
    validates :direction_to_deliver, presence: true
    validates :budget , numericality: {only_integer: true}
end
