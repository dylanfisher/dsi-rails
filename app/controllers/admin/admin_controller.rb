class Admin::AdminController < ApplicationController

  before_filter :authorize

  def index
    @all_resources = Rails.application.routes.routes.select do |route|
      route.defaults[:controller] =~ /^admin\/(.+)/ && route.defaults[:action] == 'index' && route.name == "admin_#{$1}"
    end.collect do |route|
      route.defaults[:controller].sub(/^admin\//, '').to_sym
    end.sort
  end

end
