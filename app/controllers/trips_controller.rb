class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

   def new
    @trip = Trip.new # needed to instantiate the form_for
  end

  def create
    @trip = Trip.new(params[:id])
    @trip.save
    redirect_to trips_path
  end

  private

  def restaurant_params
    params.require(:trip).permit(:title, :description, :destination, :budget_min, :budget_max, :capacity)
  end
end
