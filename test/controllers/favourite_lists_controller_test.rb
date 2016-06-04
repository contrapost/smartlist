require 'test_helper'

class FavouriteListsControllerTest < ActionController::TestCase
  test "should get show_favourite_lists" do
    get :show_favourite_lists
    assert_response :success
  end

  test "should get make_favourite_list_active" do
    get :make_favourite_list_active
    assert_response :success
  end

  test "should get delete_favourite_list" do
    get :delete_favourite_list
    assert_response :success
  end

  test "should get edit_favourite_list" do
    get :edit_favourite_list
    assert_response :success
  end

  test "should get create_favourite_list" do
    get :create_favourite_list
    assert_response :success
  end

end
