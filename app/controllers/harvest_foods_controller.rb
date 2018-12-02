class HarvestFoodsController < ApplicationController
  before_action :set_harvest_food, only: [:show, :update, :destroy]

  # GET /harvest_foods
  def index
    @harvest_foods = HarvestFood.all

    render json: @harvest_foods
  end

  # GET /harvest_foods/1
  def show
    render json: @harvest_food
  end

  # POST /harvest_foods
  def create
    @harvest_food = HarvestFood.new(harvest_food_params)

    if @harvest_food.save
      render json: @harvest_food, status: :created, location: @harvest_food
    else
      render json: @harvest_food.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /harvest_foods/1
  def update
    if @harvest_food.update(harvest_food_params)
      render json: @harvest_food
    else
      render json: @harvest_food.errors, status: :unprocessable_entity
    end
  end

  # DELETE /harvest_foods/1
  def destroy
    @harvest_food.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest_food
      @harvest_food = HarvestFood.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def harvest_food_params
      params.fetch(:harvest_food, {})
    end
end
