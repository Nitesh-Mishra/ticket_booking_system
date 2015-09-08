class ReceiptPdf < Prawn::Document
  def initialize(booking, view)
    super(top_margin: 30)
    @booking = booking
    @view = view
    booking_details

  end
  
  def booking_details
    text "Booking Details",size: 25, style: :bold, align: :center 
    
    text "Booked Id : \##{@booking.id}", top_margin: 10
    text "No. of Seats Booked : #{@booking.no_of_seats_booked}"
    text "Seat Type : : #{@booking.seat_type}"
    text "Cost of Ticket : #{@booking.cost_of_ticket}"
    text "Payment Method : #{@booking.payment_method}"
  end

end
