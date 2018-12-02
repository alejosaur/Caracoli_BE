class LotFoodsController < ApplicationController
  before_action :set_lot_food, only: [:show, :update, :destroy]

  # GET /lot_foods
  def index
    @lot_foods = LotFood.all

    render json: @lot_foods
  end

  # GET /lot_foods/1
  def show
    render json: @lot_food
  end

  # POST /lot_foods
  def create
    @lot_food = LotFood.new(lot_food_params)

    if @lot_food.save
      render json: @lot_food, status: :created, location: @lot_food
    else
      render json: @lot_food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lot_foods/1
  def update
    if @lot_food.update(lot_food_params)
      render json: @lot_food
    else
      render json: @lot_food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lot_foods/1
  def destroy
    @lot_food.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lot_food
      @lot_food = LotFood.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lot_food_params
      params.fetch(:lot_food, {})
    end
end
