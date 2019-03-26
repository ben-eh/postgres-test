class LinksController < ApplicationController
  before_action :set_link, only: [:destroy]
# no index method needed

  def new
    @link = Link.new
    @categories = Category.all
  end

  def create
    @link = Link.new(link_params)
    @link.save
    redirect_to categories_path
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    raise
  end

  private

  def link_params
    params.require(:link).permit(:name, :url, :category_id)
  end

  def set_link
    @link = Link.find(params[:link_id]) if params[:link_id]
  end

end
