class FavoriteStoresController < ApplicationController
  before_action :set_favorite_store, only: [:show, :edit, :update, :destroy]

  # GET /favorite_stores
  # GET /favorite_stores.json
  def index
    @favorite_stores = FavoriteStore.all
  end

  # GET /favorite_stores/1
  # GET /favorite_stores/1.json
  def show
  end

  # GET /favorite_stores/new
  def new
    @favorite_store = FavoriteStore.new
    @favorite_store.name = params[:name]
    @favorite_store.address = params[:address]
    @favorite_store.latitude = params[:lat]
    @favorite_store.longitude = params[:lng]
      @favorite_store.save

  end

  # GET /favorite_stores/1/edit
  def edit
  end

  # POST /favorite_stores
  # POST /favorite_stores.json
  def create
    @favorite_store = FavoriteStore.new(favorite_store_params)

    respond_to do |format|
      if @favorite_store.save
        format.html { redirect_to @favorite_store, notice: 'Favorite store was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_store }
      else
        format.html { render :new }
        format.json { render json: @favorite_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_stores/1
  # PATCH/PUT /favorite_stores/1.json
  def update
    respond_to do |format|
      if @favorite_store.update(favorite_store_params)
        format.html { redirect_to @favorite_store, notice: 'Favorite store was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_store }
      else
        format.html { render :edit }
        format.json { render json: @favorite_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_stores/1
  # DELETE /favorite_stores/1.json
  def destroy
    @favorite_store.destroy
    respond_to do |format|
      format.html { redirect_to favorite_stores_url, notice: 'Favorite store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_store
      @favorite_store = FavoriteStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_store_params
      params.require(:favorite_store).permit(:name, :address, :latitude, :longitude)
    end
end
