class SmartlistAppController < ApplicationController
  before_filter :authenticate_user!
  def index
  end

  def dashboard_user
  end

  def dashboard_admin
  end

  def dashboard_store
  end

  def contact_us
  end
end
