class VenuesController < ApplicationController

  before_action :get_venue, only: [:show, :edit, :update]

  def get_venue
    @venue = Venue.find params["id"]
  end

  def new
    @venue = Venue.new
    @user = @venue.user
  end

  def create
    @venue = @current_user.venues.create venue_params
    redirect_to @venue
  end

  def edit
  end

  def update
  end

  def index
    @venues = Venue.all
  end

  def show
  end

  def destroy
    venue = Venue.find params[:id]
    venue.destroy
    redirect_to venues_path
  end

  private
  def venue_params
    params.require(:venue).permit(:venue_name, :street_address, :postcode, :website)
  end
end
