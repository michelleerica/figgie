class PhotosController < ApplicationController

  before_action :get_photo, only: [:show, :edit, :update]


  # before_action :check_if_admin, only: [:index]

  def get_photo
    @photo = Photo.find params["id"]
  end

  def new
  end

  def create
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
end
