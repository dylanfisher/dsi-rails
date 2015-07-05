class PagesController < ApplicationController

  include SessionsHelper
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
      if logged_in?
        redirect_to new_admin_page_path(new_page: params[:id], title: params[:new_page]), flash: { error: "That page doesn't exist yet." }
      else
        redirect_to login_url, flash: { error: "Please log in first." }
      end
    end

end
