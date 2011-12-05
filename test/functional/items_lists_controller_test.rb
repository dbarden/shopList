require 'test_helper'

class ItemsListsControllerTest < ActionController::TestCase
  setup do
    @items_list = items_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create items_list" do
    assert_difference('ItemsList.count') do
      post :create, items_list: @items_list.attributes
    end

    assert_redirected_to items_list_path(assigns(:items_list))
  end

  test "should show items_list" do
    get :show, id: @items_list.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @items_list.to_param
    assert_response :success
  end

  test "should update items_list" do
    put :update, id: @items_list.to_param, items_list: @items_list.attributes
    assert_redirected_to items_list_path(assigns(:items_list))
  end

  test "should destroy items_list" do
    assert_difference('ItemsList.count', -1) do
      delete :destroy, id: @items_list.to_param
    end

    assert_redirected_to items_lists_path
  end
end
