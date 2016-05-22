class FavouriteStoresController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_favourite_store, only: [:show, :edit, :update, :destroy]

  # GET /favourite_stores
  # GET /favourite_stores.json
  def index
    # noinspection RubyResolve
    @favourite_stores = FavouriteStore.where(user_id:  current_user.id)
  end

  # GET /favourite_stores/1
  # GET /favourite_stores/1.json
  def show
  end

  # GET /favourite_stores/new
  def new
    @favourite_store = FavouriteStore.new
  end

  # GET /favourite_stores/1/edit
  def edit
  end

  # POST /favourite_stores
  # POST /favourite_stores.json
  def create
    @favourite_store = FavouriteStore.new(favourite_store_params)

    respond_to do |format|
      if @favourite_store.save
        format.html { redirect_to @favourite_store, notice: 'Favourite store was successfully created.' }
        format.json { render :show, status: :created, location: @favourite_store }
      else
        format.html { render :new }
        format.json { render json: @favourite_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favourite_stores/1
  # PATCH/PUT /favourite_stores/1.json
  def update
    respond_to do |format|
      if @favourite_store.update(favourite_store_params)
        format.html { redirect_to @favourite_store, notice: 'Favourite store was successfully updated.' }
        format.json { render :show, status: :ok, location: @favourite_store }
      else
        format.html { render :edit }
        format.json { render json: @favourite_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourite_stores/1
  # DELETE /favourite_stores/1.json
  def destroy
    @favourite_store.destroy
    respond_to do |format|
      format.html { redirect_to favourite_stores_url, notice: 'Favourite store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite_store
      @favourite_store = FavouriteStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favourite_store_params
      params.require(:favourite_store).permit(:name, :address, :latitude, :longitude, :user_id)
    end
end
