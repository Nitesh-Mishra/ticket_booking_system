class Addbookedticketandavailabletickettoschedule < ActiveRecord::Migration
  def change
  	add_column :schedules, :booked_seats, :string
  	add_column :schedules, :available_seats, :string, :default => "0"
  end
end
