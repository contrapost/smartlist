class FavouriteListsController < ApplicationController
  before_filter :authenticate_user!, :usual_user?

  def show_favourite_lists
  end

  def make_favourite_list_active
  end

  def delete_favourite_list
  end

  def edit_favourite_list
  end

  def create_favourite_list
  end

  private
  def usual_user?
    redirect_to '/' unless !current_user.admin? && !current_user.store?
  end
end
