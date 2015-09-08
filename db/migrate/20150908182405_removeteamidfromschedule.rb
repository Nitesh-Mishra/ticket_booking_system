class Removeteamidfromschedule < ActiveRecord::Migration
  def change
  	remove_column :schedules, :team_id1
  	remove_column :schedules, :team_id2
  end
end
