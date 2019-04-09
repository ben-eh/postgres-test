class LinksController < ApplicationController
  before_action :set_link, only: [:edit, :update, :destroy]
# no index method needed

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
    @categories = Category.all
  end

  def create
    @link = Link.new(link_params)
    @link.save
    redirect_to categories_path
  end

  def edit
    @categories = Category.all
  end

  def update
    @link.update(link_params)
    redirect_to root_path
  end

  def destroy
    # @category = @link.category
    @link.destroy
    redirect_to root_path
    # raise
  end

  private

  def link_params
    params.require(:link).permit(:name, :url, :category_id)
  end

  def set_link
    @link = Link.find(params[:id])
  end

end
