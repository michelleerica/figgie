class PhotosController < ApplicationController

  before_action :get_photo, only: [:show, :edit, :update]

  # before_action :get_user, only: [:show, :edit, :update]

  # before_action :check_if_admin, only: [:index]
  def get_user
    @user = User.find params["id"]
  end

  def get_photo
    @photo = Photo.find params["id"]
  end

  def new
    @photo = Photo.new
    @user = @photo.user

  end

  def create
    @photo = @current_user.photos.create photo_params
    # @photo.update photo_params
    redirect_to @photo

  end

  def edit
  end

  def update
    @photo.update photo_params
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
    params.require(:photo).permit(:image, :user_id, :venue_id, :cuisine_id, :description, :price_range, :cuisine_id)
  end
end
