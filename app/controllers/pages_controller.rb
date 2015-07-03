class PagesController < ApplicationController

  def index
    @pages = Page.all
    @navigation_items = NavigationItem.all
  end

  def show
    @page = Page.find(params[:id])
  end

end
