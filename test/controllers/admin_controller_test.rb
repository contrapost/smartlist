require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get show_users" do
    get :show_users
    assert_response :success
  end

  test "should get show_stores" do
    get :show_stores
    assert_response :success
  end

  test "should get show_user" do
    get :show_user
    assert_response :success
  end

  test "should get show_store" do
    get :show_store
    assert_response :success
  end

  test "should get new_user" do
    get :new_user
    assert_response :success
  end

  test "should get new_store" do
    get :new_store
    assert_response :success
  end

  test "should get edit_user" do
    get :edit_user
    assert_response :success
  end

  test "should get edit_store" do
    get :edit_store
    assert_response :success
  end

  test "should get create_user" do
    get :create_user
    assert_response :success
  end

  test "should get create_store" do
    get :create_store
    assert_response :success
  end

  test "should get update_user" do
    get :update_user
    assert_response :success
  end

  test "should get update_store" do
    get :update_store
    assert_response :success
  end

  test "should get destroy_user" do
    get :destroy_user
    assert_response :success
  end

  test "should get destroy_store" do
    get :destroy_store
    assert_response :success
  end

end
