class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
    @booking = Booking.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReceiptPdf.new(@booking, view_context)
        send_data pdf.render, filename: "booking.pdf",
                              type: "application/pdf", disposition: "inline"
      end
    end
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @user = User.find(session[:user_id])
    @schedule = Schedule.find(session[:schedule_id])
    respond_to do |format|
      if @booking.save
        session[:schedule_id] = nil
        @schedule.available_seats = @schedule.available_seats.to_i - @booking.no_of_seats_booked.to_i
        @schedule.booked_seats = @schedule.booked_seats.to_i + @booking.no_of_seats_booked.to_i
        @schedule.save!
        UserMailer.receipt_send(@user).deliver
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }

      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:no_of_seats_booked, :seat_type, :cost_of_ticket, :payment_method, :user_id, :schedule_id)
    end
end
