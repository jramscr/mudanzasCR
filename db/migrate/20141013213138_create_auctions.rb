class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.integer :start_hour
      t.integer :start_minute
      t.integer :end_hour
      t.integer :end_minute
      t.string :kind_of_ware
      t.string :pick_direction
      t.string :deliver_direction
      t.integer :pick_hour
      t.integer :pick_minute
      t.integer :deliver_hour
      t.integer :pick_minute
      t.integer :budget
      t.string :image

      t.timestamps
    end
  end
end
