require 'test_helper'

class SmartlistAppControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get dashboard_user" do
    get :dashboard_user
    assert_response :success
  end

  test "should get dashboard_admin" do
    get :dashboard_admin
    assert_response :success
  end

  test "should get dashboard_store" do
    get :dashboard_store
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end
