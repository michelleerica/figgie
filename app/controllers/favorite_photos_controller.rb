class FavoritePhotosController < ApplicationController
  before_action :set_photo

  def create

    # if Favorite.create(favorited: @photo, user: @current_user)
    #   redirect_to @photo
    # else
    #   redirect_to photo_path
    # end
    #
    # raise 'hell'

    @favorites = Favorite.all
    if (@favorites.where favorited_id: @photo.id).present?
      (@favorites.where favorited_id: @photo.id).first.destroy
      redirect_to photos_path

    elsif
      Favorite.create(favorited: @photo, user: @current_user)
        redirect_to @photo

    end
  end

  def destroy
    # Favorite.where(favorited_id: @photo.id, user_id: @current_user.id).first.destroy
    # redirect_to @photo
    Favorite.destroy(favorited: @photo, user: @current_user)
      redirect_to @photo
    redirect_to photos_path

  end

  private

  def set_photo
    @photo = Photo.find(params[:p_id] || params[:id])
  end
end
