class SmartlistAppController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def dashboard_user
    if current_user.admin?
      redirect_to '/dashboard_admin'
    elsif current_user.store?
      redirect_to '/dashboard_store'
    else
    end
  end

  def dashboard_admin
  end

  def dashboard_store
  end

  def contact_us
  end
end
