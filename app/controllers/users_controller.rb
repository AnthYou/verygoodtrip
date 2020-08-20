class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @trips = Trip.all
    @trips_admin = @trips.where(user_id: @user.id)
  end

  def show
    @user = User.find(params[:id])
  end
end
