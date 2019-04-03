class LinksController < ApplicationController
  before_action :set_link, only: [:destroy, :edit, :update, :destroy]
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
    @link = Link.find(params[:id])
    @categories = Category.all
  end

  def update
    @link = Link.find(params[:id])
    @link.update(link_params)
  end

  def destroy
    @link = Link.find(params[:id])
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
    @link = Link.find(params[:link_id]) if params[:link_id]
  end

end
