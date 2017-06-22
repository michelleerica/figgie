class FavoritePhotosController < ApplicationController
  before_action :set_photo

  def create
    if Favorite.create(favorited: @photo, user: @current_user)
      redirect_to @photo, notice: 'Photo has been favorited'
    else
      redirect_to photo_path, alert: 'Something went wrong...*sad panda*'
    end
  end

  def destroy
    Favorite.where(favorited_id: @photo.id, user_id: @current_user.id).first.destroy
    redirect_to photo_path, notice: 'Photo is no longer in favorites'
  end

  private

  def set_photo
    @photo = Photo.find(params[:p_id] || params[:id])
  end
end
