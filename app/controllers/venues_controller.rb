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
  end
end
