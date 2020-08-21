class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @trips = Trip.search_by_destination(params[:query])
    else
      @trips = [Trip.undeparted.order(departure_date: :asc), Trip.departed].flatten
    end
  end

  def new
    @trip = Trip.new # needed to instantiate the form_for
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:title, :description, :destination, :budget_min, :budget_max, :capacity, :return_date, :departure_date, :photo)
  end
end
