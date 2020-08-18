class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @trip = Trip.find(params[:trip_id])
  end
end
