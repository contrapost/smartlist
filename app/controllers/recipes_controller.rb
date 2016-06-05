# noinspection RubyResolve
class RecipesController < ApplicationController
  before_filter :authenticate_user!, :usual_user?

  def show_recipes
    @recipes = Recipe.where(user_id: current_user.id)
  end

  def set_recipe_as_active_list
    @recipe = Recipe.find(params[:id])
    Product.all.each { |product| product.update_attribute(:active, false) }
    @recipe.products.each { |product| product.update_attribute(:active, true) }
    respond_to do |format|
      format.html { redirect_to shopping_list_path, notice: "Recipe #{@recipe.name} is set as active shopping list" }
      format.json { render :show, status: :ok, location: @recipe }
    end
  end

  def add_recipe_to_active_list
    @recipe = Recipe.find(params[:id])
    @recipe.products.each { |product| product.update_attribute(:active, true) }
    respond_to do |format|
      format.html { redirect_to shopping_list_path, notice: "Recipe #{@recipe.name} has been added to active shopping list" }
      format.json { render :show, status: :ok, location: @recipe }
    end
  end

  def delete_recipe
    @recipe = Recipe.find(params[:id])
    name = @recipe.name
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_show_recipes_path, notice: "Recipe #{name} was deleted" }
      format.json { head :no_content }
    end
  end

  def delete_product_from_recipe
    @recipe = Recipe.find(params['recipe_id'])
    products = @recipe.products
    products.delete(Product.find(params[:id]))
    @recipe.products = products
    redirect_to show_recipe_constructor_path(id: params['recipe_id'])
  end

  def add_product_to_recipe
    @recipe = Recipe.find(params['recipe_id'])
    products = @recipe.products
    product = Product.find(params[:id])
    if products.include? product
      respond_to do |format|
        format.html { redirect_to show_recipe_constructor_path(id: params['recipe_id']),
                                  notice: "#{product.name} is already added to the recipe" }
        format.json { head :no_content }
      end
    else
      products << product
      @recipe.products = products
      redirect_to show_recipe_constructor_path(id: params['recipe_id'])
    end
  end

  def edit_recipe
    @recipe = Recipe.find(params[:id])
    @all_products = show_all_user_products
    @products_from_recipe = @recipe.products
  end

  def register_new_recipe
    @name = params[:name]
    if name_is_available? @name
      @recipe = Recipe.new(name: @name, user_id: current_user.id)
      @recipe.save!
      redirect_to show_recipe_constructor_path(id: @recipe.id)
    else
      respond_to do |format|
        format.html { redirect_to recipes_show_recipes_path, notice: "Recipe #{@name} already exists" }
        format.json { render :show, status: :ok, location: @recipe }
      end
    end

  end

  def show_recipe_constructor
    @recipe = Recipe.find(params[:id])
    @products_in_recipe = @recipe.products
    @products = show_all_user_products
  end

  def create_recipe
    @name = params[:name]
    @active_products = get_active_products
    if name_is_available?(@name)
      @recipe = Recipe.new(name: @name, user_id: current_user.id)
      @recipe.save!
      @recipe.products << @active_products
      respond_to do |format|
        format.html { redirect_to recipes_show_recipes_path, notice: "#{@name} recipe was successfully created" }
        format.json { render :show, status: :ok, location: @recipe }
      end
    else
      respond_to do |format|
        format.html { redirect_to recipes_show_recipes_path, notice: "Recipe #{@name} already exists" }
        format.json { render :show, status: :ok, location: @recipe }
      end
    end
  end

  def usual_user?
    redirect_to '/' unless !current_user.admin? && !current_user.store?
  end

  def get_active_products
    Product.where(user_id: current_user.id, active: true)
  end

  def name_is_available?(name_to_set)
    Recipe.where(name: name_to_set, user_id: current_user.id).blank?
  end

  def show_all_user_products
    Product.where(user_id: current_user.id)
  end
end
