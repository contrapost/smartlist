class ShoppingDetailsController < ApplicationController
  before_action :set_shopping_detail, only: [:show, :edit, :update, :destroy]

  # GET /shopping_details
  # GET /shopping_details.json
  def index
    @shopping_details = ShoppingDetail.where(user_id: current_user.id)
  end

  # GET /shopping_details/1
  # GET /shopping_details/1.json
  def show
  end

  # GET /shopping_details/new
  def new
    @shopping_detail = ShoppingDetail.new
  end

  # GET /shopping_details/1/edit
  def edit
  end

  # POST /shopping_details
  # POST /shopping_details.json
  def create
    @shopping_detail = ShoppingDetail.new(shopping_detail_params)

    respond_to do |format|
      if @shopping_detail.save
        format.html { redirect_to @shopping_detail, notice: 'Shopping detail was successfully created.' }
        format.json { render :show, status: :created, location: @shopping_detail }
      else
        format.html { render :new }
        format.json { render json: @shopping_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_details/1
  # PATCH/PUT /shopping_details/1.json
  def update
    respond_to do |format|
      if @shopping_detail.update(shopping_detail_params)
        format.html { redirect_to @shopping_detail, notice: 'Shopping detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopping_detail }
      else
        format.html { render :edit }
        format.json { render json: @shopping_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_details/1
  # DELETE /shopping_details/1.json
  def destroy
    @shopping_detail.destroy
    respond_to do |format|
      format.html { redirect_to shopping_details_url, notice: 'Shopping detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_detail
      @shopping_detail = ShoppingDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_detail_params
      params.require(:shopping_detail).permit(:image, :description, :user_id)
    end
end
