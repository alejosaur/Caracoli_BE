class FoodInLotsController < ApplicationController
  before_action :set_food_in_lot, only: [:show, :update, :destroy]

  # GET /food_in_lots
  def index
    @food_in_lots = FoodInLot.all

    render json: @food_in_lots
  end

  # GET /food_in_lots/1
  def show
    render json: @food_in_lot
  end

  # POST /food_in_lots
  def create
    @food_in_lot = FoodInLot.new(food_in_lot_params)

    if @food_in_lot.save
      render json: @food_in_lot, status: :created, location: @food_in_lot
    else
      render json: @food_in_lot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_in_lots/1
  def update
    if @food_in_lot.update(food_in_lot_params)
      render json: @food_in_lot
    else
      render json: @food_in_lot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_in_lots/1
  def destroy
    @food_in_lot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_in_lot
      @food_in_lot = FoodInLot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_in_lot_params
      params.require(:food_in_lot).permit(:lot_id, :food_id)
    end
end
