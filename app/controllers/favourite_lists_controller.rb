# noinspection RubyResolve,RailsParamDefResolve
class FavouriteListsController < ApplicationController
  before_filter :authenticate_user!, :usual_user?

  def show_favourite_lists
    @favourite_lists = FavouriteList.where(user_id: current_user.id)
  end

  def make_favourite_list_active
    @favourite_list = FavouriteList.find(params[:id])
    all_products = Product.all
    all_products.each { |product| product.update_attribute(:active, false) }
    products_from_favourite_list = @favourite_list.products
    products_from_favourite_list.each { |product| product.update_attribute(:active, true) }
    respond_to do |format|
      format.html { redirect_to shopping_list_path, notice: "#{@favourite_list.name} is set as active shopping list" }
      format.json { render :show, status: :ok, location: @favourite_store }
    end
  end

  def delete_favourite_list
    @favourite_list = FavouriteList.find(params[:id])
    name = @favourite_list.name
    @favourite_list.destroy
    respond_to do |format|
      format.html { redirect_to favourite_lists_show_favourite_lists_path, notice: "Shopping list #{name} was deleted" }
      format.json { head :no_content }
    end
  end

  def delete_from_favourite_list
    @favourite_list = FavouriteList.find(params['favourist_list_id'])
    products = @favourite_list.products
    products.delete(Product.find(params[:id]))
    @favourite_list.products = products
    redirect_to favourite_lists_edit_favourite_list_path(id: params['favourist_list_id'])
  end
  
  def add_to_favourite_list
    @favourite_list = FavouriteList.find(params['favourist_list_id'])
    products = @favourite_list.products
    product = Product.find(params[:id])
    if products.include? product
      respond_to do |format|
        format.html { redirect_to favourite_lists_edit_favourite_list_path(id: params['favourist_list_id']),
                                  notice: "#{product.name} is already added to the list" }
        format.json { head :no_content }
      end
    else
      products << product
      @favourite_list.products = products
      redirect_to favourite_lists_edit_favourite_list_path(id: params['favourist_list_id'])
    end
  end

  def edit_favourite_list
    @favourite_list = FavouriteList.find(params[:id])
    @all_products = show_all_user_products
    @products_from_favourite_list = @favourite_list.products
  end

  def create_favourite_list
    @name = params[:name]
    @active_products = get_active_products
    if name_is_available?(@name)
      @favourite_list = FavouriteList.new(name: @name, user_id: current_user.id)
      @favourite_list.save!
      @favourite_list.products << @active_products
      respond_to do |format|
        format.html { redirect_to shopping_list_path, notice: "#{@name} shopping list was successfully added to favourites" }
        format.json { render :show, status: :ok, location: @favourite_store }
      end
    else
      respond_to do |format|
        format.html { redirect_to shopping_list_path, notice: "Favourite list #{@name} already exists" }
        format.json { render :show, status: :ok, location: @favourite_store }
      end
    end

  end

  private
  def usual_user?
    redirect_to '/' unless !current_user.admin? && !current_user.store?
  end

  def get_active_products
    Product.where(user_id: current_user.id, active: true)
  end

  def name_is_available?(name_to_set)
    FavouriteList.where(name: name_to_set).blank?
  end

  def show_all_user_products
    Product.where(user_id: current_user.id)
  end
end
