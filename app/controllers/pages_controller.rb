class PagesController < ApplicationController

  around_filter :catch_not_found

  def index
    @pages = Page.all
  end

  def show
    @page = Page.friendly.find(params[:id])
  end

  private

    def catch_not_found
      yield
    rescue ActiveRecord::RecordNotFound
      redirect_to new_admin_page_path(new_page: params[:id]), :flash => { :error => "That page doesn't exist yet." }
    end

end
