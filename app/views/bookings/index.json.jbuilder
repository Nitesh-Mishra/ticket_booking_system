json.array!(@bookings) do |booking|
  json.extract! booking, :id, :no_of_seats_booked, :seat_type, :cost_of_ticket, :payment_method
  json.url booking_url(booking, format: :json)
end
