class Changedatatypeinschedule < ActiveRecord::Migration
  def change

  	change_column :schedules, :date, :date
  	change_column :schedules, :time, :time

  end
end
