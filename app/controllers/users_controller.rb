class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :photos]


  # before_action :check_if_admin, only: [:index]

  def get_user
    @user = User.find params["id"]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if params[:file].present?
      #perform upload to cloudinary
      req = Cloudinary::Uploader.upload params[:file]
      @user.image = req['public_id']
    end

    @user.save

    if @user.id.present?
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def edit
    redirect_to root_path unless @current_user == @user
  end

  def update
    @user = @current_user
    @user.update user_params
    redirect_to user_path(params["id"])
  end

  def index
    @users = User.all
  end

  def show
  end

  def photos
    @photos = Photo.all

  end

  def destroy
  end



  private
  def user_params
    params.require(:user).permit(:username, :full_name, :email, :password, :password_confirmation, :image, :instagram, :bio, :website)
  end
end
