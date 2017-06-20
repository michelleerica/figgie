class DishesController < ApplicationController
  before_action :get_dish, only: [:show, :edit, :update]

  def get_user
    @user = User.find params["id"]
  end

  def get_photo
    @photo = Photo.find params["id"]
  end

  def get_dish
    @dish = Dish.find params["id"]
  end

  def new
    @dish = Dish.new
    @user = @dish.user
  end

  def create

        @dish = @current_user.dishes.new dish_params

        if params[:file].present?
          #perform upload to cloudinary
          req = Cloudinary::Uploader.upload params[:file]
          @dish.image = req['public_id']
        end

        if @dish.save
          # save was successful, now add cuisine associations
          cuisines = Cuisine.where id: params[:dish][:cuisine_ids]
          @dish.cuisines << cuisines
          redirect_to dish_path(@dish)

          venue = Venue.where id: params[:dish][:venue_ids]
          @dish.venues << venues
          redirect_to dish_path(@dish)
        else
          render :new
        end
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
  end

  def destroy
  end

  private
  def dish_params
    params.require(:dish).permit(:image, :user_id, :venue_id, :description, :price_range, :cuisine_id, :photo_id, :venue_id)
  end
end
