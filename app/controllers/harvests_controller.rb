class HarvestsController < ApplicationController
  before_action :set_harvest, only: [:show, :update, :destroy]

  # GET /harvests
  def index
    @harvests = Harvest.all

    render json: @harvests
  end

  # GET /harvests/1
  def show
    render json: @harvest
  end

  # POST /harvests
  def create
    @harvest = Harvest.new(harvest_params)

    if @harvest.save
      render json: @harvest, status: :created, location: @harvest
    else
      render json: @harvest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /harvests/1
  def update
    if @harvest.update(harvest_params)
      render json: @harvest
    else
      render json: @harvest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /harvests/1
  def destroy
    @harvest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest
      @harvest = Harvest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def harvest_params
      params.require(:harvest).permit(:harvest_date, :final_weight, :production_center_id)
    end
end
