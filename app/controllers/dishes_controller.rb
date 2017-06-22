class DishesController < ApplicationController
  before_action :get_dish, only: [:show, :edit, :update]

  before_action :check_if_logged_in, except: [:show, :index]

    #
  # def get_user
  #   @user = User.find params["id"]
  # end
  #
  # def get_photo
  #   @photo = Photo.find params["id"]
  # end

  def get_dish
    @dish = Dish.find params["id"]
  end

  def new
    @dish = Dish.new
    # @user = @dish.user
  end

  def create

    raise 'hell'

    @dish = @current_user.dishes.new(dish_params)


    if params[:file].present?

      photo = Photo.new description: params[:description], user: @current_user

      #perform upload to cloudinary
      req = Cloudinary::Uploader.upload params[:file]
      photo.image = req['public_id']

      if photo.save
        puts "=" * 50
        puts "SAVED PHOTO", photo

        @dish.photos << photo
      end

    end  # cloudinary upload




    if @dish.save
      # save was successful, now add cuisine associations
      venues = Venue.where id: params[:dish][:venue_ids]
      @dish.venues << venues

      cuisines = Cuisine.where id: params[:dish][:cuisine_ids]
      @dish.cuisines << cuisines

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
    @dishes = Dish.all

  end

  def show
    @photo = @dish.photos.first
    # @photo = Photo.find params["id"]
    @user = @dish.user

  end

  def destroy
    dish = Dish.find params[:id]
    dish.destroy
    redirect_to dishes_path
  end

  private
  def dish_params
    params.require(:dish).permit(:user_id, :venue_id, :description, :cuisine_id, :photo_id)
  end

  # def photo_params
  #   params.require(:photo).permit(:image, :user_id, :venue_id, :description, :price_range, :cuisine_id)
  # end

end
