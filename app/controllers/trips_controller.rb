class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new # needed to instantiate the form_for
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trips_path(@trip)
    else
      render :new
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :description, :destination, :budget_min, :budget_max, :capacity, :return_date, :departure_date)
  end
end
