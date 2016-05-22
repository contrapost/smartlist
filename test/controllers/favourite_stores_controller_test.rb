require 'test_helper'

class FavouriteStoresControllerTest < ActionController::TestCase
  setup do
    @favourite_store = favourite_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favourite_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favourite_store" do
    assert_difference('FavouriteStore.count') do
      post :create, favourite_store: { address: @favourite_store.address, latitude: @favourite_store.latitude, longitude: @favourite_store.longitude, name: @favourite_store.name, user_id: @favourite_store.user_id }
    end

    assert_redirected_to favourite_store_path(assigns(:favourite_store))
  end

  test "should show favourite_store" do
    get :show, id: @favourite_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favourite_store
    assert_response :success
  end

  test "should update favourite_store" do
    patch :update, id: @favourite_store, favourite_store: { address: @favourite_store.address, latitude: @favourite_store.latitude, longitude: @favourite_store.longitude, name: @favourite_store.name, user_id: @favourite_store.user_id }
    assert_redirected_to favourite_store_path(assigns(:favourite_store))
  end

  test "should destroy favourite_store" do
    assert_difference('FavouriteStore.count', -1) do
      delete :destroy, id: @favourite_store
    end

    assert_redirected_to favourite_stores_path
  end
end
