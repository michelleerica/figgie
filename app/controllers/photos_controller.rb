class PhotosController < ApplicationController

  before_action :get_photo, only: [:show, :edit, :update]


  def get_photo
    @photo = Photo.find params["id"]
  end

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
      redirect_to photo_path(@photo)
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
    params.require(:photo).permit(:image, :user_id, :venue_id, :description, :price_range, :cuisine_id, :dish_id)
  end
end
