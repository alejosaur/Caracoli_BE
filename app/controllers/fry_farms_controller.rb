class FryFarmsController < ApplicationController
  before_action :set_fry_farm, only: [:show, :update, :destroy]

  # GET /fry_farms
  def index
    @fry_farms = FryFarm.all

    render json: @fry_farms
  end

  # GET /fry_farms/1
  def show
    render json: @fry_farm
  end

  # POST /fry_farms
  def create
    @fry_farm = FryFarm.new(fry_farm_params)

    if @fry_farm.save
      render json: @fry_farm, status: :created, location: @fry_farm
    else
      render json: @fry_farm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fry_farms/1
  def update
    if @fry_farm.update(fry_farm_params)
      render json: @fry_farm
    else
      render json: @fry_farm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fry_farms/1
  def destroy
    @fry_farm.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fry_farm
      @fry_farm = FryFarm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fry_farm_params
      params.fetch(:fry_farm, {})
    end
end
