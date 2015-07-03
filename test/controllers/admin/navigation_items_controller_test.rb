require 'test_helper'

class Admin::NavigationItemsControllerTest < ActionController::TestCase
  setup do
    @navigation_item = navigation_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:navigation_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create navigation_item" do
    assert_difference('NavigationItem.count') do
      post :create, navigation_item: { link: @navigation_item.link, page_id: @navigation_item.page_id, title: @navigation_item.title }
    end

    assert_redirected_to admin_navigation_item_path(assigns(:navigation_item))
  end

  test "should show navigation_item" do
    get :show, id: @navigation_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @navigation_item
    assert_response :success
  end

  test "should update navigation_item" do
    patch :update, id: @navigation_item, navigation_item: { link: @navigation_item.link, page_id: @navigation_item.page_id, title: @navigation_item.title }
    assert_redirected_to admin_navigation_item_path(assigns(:navigation_item))
  end

  test "should destroy navigation_item" do
    assert_difference('NavigationItem.count', -1) do
      delete :destroy, id: @navigation_item
    end

    assert_redirected_to admin_navigation_items_path
  end
end
