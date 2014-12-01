class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.integer :start_auction_at
      t.integer :end_auction_at
      t.string :day_to_pick
      t.integer :hour_to_pick
      t.string :direction_to_pick
      t.string :day_to_deliver
      t.integer :hour_to_deliver
      t.string :direction_to_deliver
      t.integer :budget
      t.string :kind_of_package

      t.timestamps
    end
  end
end
