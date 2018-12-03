class FoodInHarvestsController < ApplicationController
  before_action :set_food_in_harvest, only: [:show, :update, :destroy]

  # GET /food_in_harvests
  def index
    @food_in_harvests = FoodInHarvest.all

    render json: @food_in_harvests
  end

  # GET /food_in_harvests/1
  def show
    render json: @food_in_harvest
  end

  # POST /food_in_harvests
  def create
    @food_in_harvest = FoodInHarvest.new(food_in_harvest_params)

    if @food_in_harvest.save
      render json: @food_in_harvest, status: :created, location: @food_in_harvest
    else
      render json: @food_in_harvest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_in_harvests/1
  def update
    if @food_in_harvest.update(food_in_harvest_params)
      render json: @food_in_harvest
    else
      render json: @food_in_harvest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_in_harvests/1
  def destroy
    @food_in_harvest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_in_harvest
      @food_in_harvest = FoodInHarvest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_in_harvest_params
      params.require(:food_in_harvest).permit(:food_id, :harvest_id)
    end
end
