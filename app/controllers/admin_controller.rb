class AdminController < ApplicationController
  # before_action :set_user, only: [:show_user, :show_store, :edit_user, :edit_store, :update_user, :update_store, :destroy_user, :destroy_store]

  def show_users
    @users = User.where(store: false, admin: false)
  end

  def show_stores
    @users = User.where(store: true, admin: false)
  end

  def show_user
  end

  def show_store
  end

  def new_user
    @user=User.new
  end

  def new_store
  end

  def edit_user
    @user = User.find(params[:id])

  end

  def edit_store
  end

  def create_user
    @user = User.new(favourite_store_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Favourite store was successfully created.' }
        format.json { render :show_user, status: :created, location: @user }
      else
        format.html { render :new_user }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_store
    @user = User.new(favourite_store_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Favourite store was successfully created.' }
        format.json { render :show_store, status: :created, location: @user }
      else
        format.html { render :new_user }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_user
    @user = User.find(params[:id])
    @user.email = params['user_email']
    @user.skip_reconfirmation!
    @user.save
    respond_to do |format|
        format.html { redirect_to admin_show_users_url, notice: 'Favourite store was successfully updated.' }
        format.json { render :show_user, status: :ok, location: @user }
    end
  end

  def update_store
    respond_to do |format|
      if @user.update(favourite_store_params)
        format.html { redirect_to @user, notice: 'Favourite store was successfully updated.' }
        format.json { render :show_store, status: :ok, location: @user }
      else
        format.html { render :edit_store }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy_user
    @user = User.find(params[:id])
    user_email = @user.email
    is_store = @user.store
    @user.destroy
    respond_to do |format|
      if is_store
        format.html { redirect_to admin_show_stores_url, notice: "#{user_email} was successfully destroyed." }
        format.json { head :no_content }
      else
        format.html { redirect_to admin_show_users_url, notice: "#{user_email} was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :confirm_password, :store)
  end
end
