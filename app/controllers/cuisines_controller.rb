class CuisinesController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
    @cuisines = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find params["id"]
  end

  def destroy
  end
end
