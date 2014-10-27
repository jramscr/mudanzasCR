class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :start_hour
      t.string :start_minute
      t.string :end_hour
      t.string :end_minute
      t.string :kind_of_ware
      t.string :pick_direction
      t.string :deliver_direction
      t.string :pick_hour
      t.string :pick_minute
      t.string :deliver_hour
      t.string :deliver_minute
      t.string :budget
      t.string :image

      t.timestamps
    end
  end
end
