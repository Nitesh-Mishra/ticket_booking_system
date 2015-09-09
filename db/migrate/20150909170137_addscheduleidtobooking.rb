class Addscheduleidtobooking < ActiveRecord::Migration
  def change
  	add_column :bookings, :schedule_id, :integer
  end
end
