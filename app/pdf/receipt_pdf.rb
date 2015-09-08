class ReceiptPdf < Prawn::Document
  def initialize(booking, view)
    super(top_margin: 70)
    @booking = booking
    @view = view
    booking_details

  end
  
  def booking_details
    text "Booking Details",size: 25, style: :bold, align: :center
    text "Booked Id : \##{@booking.id}", margin: 50
    text "No. of Seats Booked : #{@booking.no_of_seats_booked}", margin:50
    text "Seat Type : : #{@booking.seat_type}", margin:50
    text "Cost of Ticket : #{@booking.cost_of_ticket}", margin:50
    text "Payment Method : #{@booking.payment_method}", margin:50
  end

end
