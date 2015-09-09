class Setdefaultvaluetobookedseats < ActiveRecord::Migration
  def change
  	  change_column :schedules, :booked_seats, :string, :default => "0"
  end
end
