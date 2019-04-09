class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  def show
    # raise
  end

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to category_path
  end

  private

  # def set_category
  #   @category = Category.find(params[:id])
  # end

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end
