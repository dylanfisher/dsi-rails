class Admin::NavigationItemsController < ApplicationController
  before_action :set_navigation_item, only: [:show, :edit, :update, :destroy]

  # GET /admin/navigation_items
  # GET /admin/navigation_items.json
  def index
    @navigation_items = NavigationItem.all
  end

  # GET /admin/navigation_items/1
  # GET /admin/navigation_items/1.json
  def show
  end

  # GET /admin/navigation_items/new
  def new
    @navigation_item = NavigationItem.new
  end

  # GET /admin/navigation_items/1/edit
  def edit
  end

  # POST /admin/navigation_items
  # POST /admin/navigation_items.json
  def create
    @navigation_item = NavigationItem.new(navigation_item_params)

    respond_to do |format|
      if @navigation_item.save
        format.html { redirect_to [:admin, @navigation_item], notice: 'Navigation item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @navigation_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @navigation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/navigation_items/1
  # PATCH/PUT /admin/navigation_items/1.json
  def update
    respond_to do |format|
      if @navigation_item.update(navigation_item_params)
        format.html { redirect_to [:admin, @navigation_item], notice: 'Navigation item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @navigation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/navigation_items/1
  # DELETE /admin/navigation_items/1.json
  def destroy
    @navigation_item.destroy
    respond_to do |format|
      format.html { redirect_to admin_navigation_items_url, notice: 'Navigation item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_navigation_item
      @navigation_item = NavigationItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def navigation_item_params
      params.require(:navigation_item).permit(:navigation_item_id, :page_id, :title, :link)
    end
end
