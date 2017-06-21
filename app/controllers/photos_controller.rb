class PhotosController < ApplicationController

  before_action :get_photo, only: [:show, :edit, :update]
  # before_action :get_venues, only: [:show, :edit, :update]


  # before_action :get_user, only: [:show, :edit, :update]

  # before_action :check_if_admin, only: [:index]

  def get_photo
    @photo = Photo.find params["id"]
  end

  # def get_venues
  #   @venues = Venue.all
  # end

  def new
    @photo = Photo.new
    @user = @photo.user

  end

  def create

    @photo = @current_user.photos.new photo_params

    if params[:file].present?
      #perform upload to cloudinary
      req = Cloudinary::Uploader.upload params[:file]
      @photo.image = req['public_id']
    end

    @photo.save

    # if @photo.save
    #   # save was successful, now add cuisine associations
    #   cuisines = Cuisine.where id: params[:photo][:cuisine_ids]
    #   @photo.dishes << cuisines
      redirect_to photo_path(@photo)
    # else
    #   render :new
    # end




  end

  def edit
  end

  def update
    @photo.update photo_params
    if params[:file].present?
      #perform upload to cloudinary
      req = Cloudinary::Uploader.upload params[:file]
      @photo.image = req['public_id']

    end


    @photo.save

    redirect_to photo_path(params["id"])
  end

  def index
    @photos = Photo.all
  end

  def show
    @user = @photo.user

  end

  def destroy
    photo = Photo.find params[:id]
    photo.destroy
    redirect_to photos_path
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :user_id, :venue_id, :description, :price_range, :cuisine_id)
  end
end
