class BudgetsController < ApplicationController
  before_filter :authenticate_user!, :usual_user?

  def show_budget
  end

  private
  def usual_user?
    redirect_to '/' unless !current_user.admin? && !current_user.store?
  end

end
