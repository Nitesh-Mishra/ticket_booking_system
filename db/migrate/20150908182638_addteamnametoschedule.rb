class Addteamnametoschedule < ActiveRecord::Migration
  def change
  	add_column :schedules, :team_name1, :string
  	add_column :schedules, :team_name2, :string
  end
end
