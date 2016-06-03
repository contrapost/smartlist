require 'test_helper'

class ShoppingListsControllerTest < ActionController::TestCase
  test "should get show_favourite_lists" do
    get :show_favourite_lists
    assert_response :success
  end

  test "should get show_active_list" do
    get :show_active_list
    assert_response :success
  end

  test "should get delete_favourite_list" do
    get :delete_favourite_list
    assert_response :success
  end

end
