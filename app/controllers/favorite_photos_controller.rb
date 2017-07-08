class FavoritePhotosController < ApplicationController
  before_action :set_photo

  def create
    # favoriting and unfavoriting dealt with in 'create' (I had issues with the destroy route)
    # if the image has already been favorited, clicking on the icon (star or stop sign) will trigger if statement and the favorited item will be removed from favorites (i.e. favorite.all)
    @favorites = Favorite.all
    if (@favorites.where favorited_id: @photo.id).present?
      (@favorites.where favorited_id: @photo.id).first.destroy
      redirect_to photos_path

    # this is main favoriting method - if not already a favorite, a favorite will be created
    elsif
      Favorite.create(favorited: @photo, user: @current_user)
        redirect_to @photo

    end
  end

  def destroy


  end

  private

  def set_photo
    @photo = Photo.find(params[:p_id] || params[:id])
  end
end
