class CategoriesController < ApplicationController
  before_action :get_category, only: [:show, :edit, :update]

  def get_category
    @category = Category.find params["id"]
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
    @categories = Category.all
  end

  def show
    @photo = @category.dishes.first.photos.first
  end

  def destroy
  end
end
