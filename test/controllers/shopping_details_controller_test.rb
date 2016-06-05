require 'test_helper'

class ShoppingDetailsControllerTest < ActionController::TestCase
  setup do
    @shopping_detail = shopping_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_detail" do
    assert_difference('ShoppingDetail.count') do
      post :create, shopping_detail: {  }
    end

    assert_redirected_to shopping_detail_path(assigns(:shopping_detail))
  end

  test "should show shopping_detail" do
    get :show, id: @shopping_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_detail
    assert_response :success
  end

  test "should update shopping_detail" do
    patch :update, id: @shopping_detail, shopping_detail: {  }
    assert_redirected_to shopping_detail_path(assigns(:shopping_detail))
  end

  test "should destroy shopping_detail" do
    assert_difference('ShoppingDetail.count', -1) do
      delete :destroy, id: @shopping_detail
    end

    assert_redirected_to shopping_details_path
  end
end
