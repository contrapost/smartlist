require 'test_helper'

class FavoriteStoresControllerTest < ActionController::TestCase
  setup do
    @favorite_store = favorite_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_store" do
    assert_difference('FavoriteStore.count') do
      post :create, favorite_store: { address: @favorite_store.address, latitude: @favorite_store.latitude, longitude: @favorite_store.longitude, name: @favorite_store.name }
    end

    assert_redirected_to favorite_store_path(assigns(:favorite_store))
  end

  test "should show favorite_store" do
    get :show, id: @favorite_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_store
    assert_response :success
  end

  test "should update favorite_store" do
    patch :update, id: @favorite_store, favorite_store: { address: @favorite_store.address, latitude: @favorite_store.latitude, longitude: @favorite_store.longitude, name: @favorite_store.name }
    assert_redirected_to favorite_store_path(assigns(:favorite_store))
  end

  test "should destroy favorite_store" do
    assert_difference('FavoriteStore.count', -1) do
      delete :destroy, id: @favorite_store
    end

    assert_redirected_to favorite_stores_path
  end
end
