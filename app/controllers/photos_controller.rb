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
  end

  def edit
  end

  def update
  end

  def index
    @photos = Photo.all
  end

  def show
    @user = @photo.user

  end

  def destroy
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :user_id, :venue_id, :cuisine_id, :description, :price_range)
  end
end
