json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :team_id1, :team_id2, :date, :time, :no_of_seats
  json.url schedule_url(schedule, format: :json)
end
