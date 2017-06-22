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
    @category = Category.find_by :id => params[:id]

  end

  def destroy
  end
end
