# noinspection RubyResolve
class AdminController < ApplicationController
  before_filter :authenticate_user!, :admin?
  # before_action :set_user, only: [:show_user, :show_store, :edit_user, :edit_store, :update_user, :update_store, :destroy_user, :destroy_store]

  def show_users
    @users = User.where(store: false, admin: false)
  end

  def show_stores
    @users = User.where(store: true, admin: false)
  end

  def show_user
  end

  def new_user
    @user=User.new
  end

  def new_store
  end

  def edit_user
    @user = User.find(params[:id])
  end


  def create_user
    if User.where(email: params['user_email']).blank?
      @user
      if params['store']
        @user = User.new :email => params['user_email'], :password => 'verySpecialAnd5839xxtuUnbruteforcableBecauseofSpellinNoproblemo0303030395passworT',
                         :password_confirmation => 'verySpecialAnd5839xxtuUnbruteforcableBecauseofSpellinNoproblemo0303030395passworT',
                         :store => true
      else
        @user = User.new :email => params['user_email'], :password => 'verySpecialAnd5839xxtuUnbruteforcableBecauseofSpellinNoproblemo0303030395passworT',
                         :password_confirmation => 'verySpecialAnd5839xxtuUnbruteforcableBecauseofSpellinNoproblemo0303030395passworT'
      end
      @user.skip_confirmation!

      @user.send_reset_password_instructions
      @user.save!
      respond_to do |format|
        if params['store']
          format.html { redirect_to admin_show_stores_url, notice: 'Store was successfully created' }
        else
          format.html { redirect_to admin_show_users_url, notice: 'User was successfully created' }
        end
        format.json { render :show_user, status: :ok, location: @user }
      end
    else
      respond_to do |format|
        if params['store']
          format.html { redirect_to admin_new_store_path, notice: "#{params['user_email']} is already taken!" }
        else
          format.html { redirect_to admin_new_user_path, notice: "#{params['user_email']} is already taken!" }
        end
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end


  # noinspection RailsChecklist01
  def update_user
    @user = User.find(params[:id])
    email_after = params['user_email']
    if User.where(email: params['user_email']).blank?
      user_email_before = @user.email
      @user.email = params['user_email']
      is_store = @user.store
      @user.skip_reconfirmation!
      @user.save
      respond_to do |format|
        if is_store
          format.html { redirect_to admin_show_stores_url, notice: "User #{user_email_before} was successfully changed to #{email_after}" }
          format.json { render :show_user, status: :ok, location: @user }
        else
          format.html { redirect_to admin_show_users_url, notice: "User #{user_email_before} was successfully changed to #{email_after}" }
          format.json { render :show_user, status: :ok, location: @user }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to admin_edit_user_url(id: @user.id), notice: "#{email_after} is already taken!" }
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

  def admin?
      redirect_to '/' unless current_user.admin?
  end
end
