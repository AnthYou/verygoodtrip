class UsersController < ApplicationController
  def dashboard
    @trips = Trip.all
    @user = current_user
    @trips_admin = @trips.where(user_id: @user.id)
  end

  def show
    @user = User.find(params[:id])
    @trips = @user.bookings.map do |booking|
        next booking.trip if booking.accepted == true && booking.trip.geocoded?
        nil
    end.compact
     @markers = @trips.map do |trip|
      {
        lat: trip.latitude,
        lng: trip.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { trip: trip })
      }
      end
  end
end
