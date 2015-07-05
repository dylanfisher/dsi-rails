class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.friendly.find(params[:id])
    end
end
