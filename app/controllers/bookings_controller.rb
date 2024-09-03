class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight: @flight)
    params[:num_tickets].to_i.times{@booking.passangers.build}
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "Booking successfully created"
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end


  private
  def booking_params
    params.require(:booking).permit(:flight_id, passangers_attributes: [:username, :email])
  end
end
