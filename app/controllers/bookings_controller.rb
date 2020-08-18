class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @trip = Trip.find(params[:trip_id])
    @booking.trip = @trip
    @booking.user = @user
    if @booking.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:description)
  end
end
