class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :set_links_columns]
  before_action :set_category_columns, only: [:index, :new]
  before_action :set_links_columns, only: [:show]

  def index
    @categories = Category.all.order(:name)
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

  def set_category_columns
    @categories = Category.all
    count = @categories.count
    if count / 8 == 0
      @category_columns_count = 1
    else
      @category_columns_count = count / 8 + 1
    end
  end

  def set_links_columns
    @links = @category.links.all
    count = @links.count
    if count / 8 == 0
      @links_columns_count = 1
    else
      @links_columns_count = count / 8 + 1
    end
  end

end
