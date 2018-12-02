class ProductionCentersController < ApplicationController
  before_action :set_production_center, only: [:show, :update, :destroy]

  # GET /production_centers
  def index
    @production_centers = ProductionCenter.all

    render json: @production_centers
  end

  # GET /production_centers/1
  def show
    render json: @production_center
  end

  # POST /production_centers
  def create
    @production_center = ProductionCenter.new(production_center_params)

    if @production_center.save
      render json: @production_center, status: :created, location: @production_center
    else
      render json: @production_center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /production_centers/1
  def update
    if @production_center.update(production_center_params)
      render json: @production_center
    else
      render json: @production_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /production_centers/1
  def destroy
    @production_center.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_center
      @production_center = ProductionCenter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_center_params
      params.fetch(:production_center, {})
    end
end
