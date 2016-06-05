require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  test "should get show_recipes" do
    get :show_recipes
    assert_response :success
  end

  test "should get set_recipe_as_active_list" do
    get :set_recipe_as_active_list
    assert_response :success
  end

  test "should get add_recipe_to_active_list" do
    get :add_recipe_to_active_list
    assert_response :success
  end

  test "should get delete_recipe" do
    get :delete_recipe
    assert_response :success
  end

  test "should get delete_product_from_recipe" do
    get :delete_product_from_recipe
    assert_response :success
  end

  test "should get add_product_to_recipe" do
    get :add_product_to_recipe
    assert_response :success
  end

  test "should get edit_recipe" do
    get :edit_recipe
    assert_response :success
  end

  test "should get create_recipe" do
    get :create_recipe
    assert_response :success
  end

end
