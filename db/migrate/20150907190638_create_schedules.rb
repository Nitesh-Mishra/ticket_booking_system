class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :team_id1
      t.integer :team_id2
      t.datetime :date
      t.datetime :time
      t.string :no_of_seats

      t.timestamps null: false
    end
  end
end
