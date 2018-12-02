class HarvestLotsController < ApplicationController
  before_action :set_harvest_lot, only: [:show, :update, :destroy]

  # GET /harvest_lots
  def index
    @harvest_lots = HarvestLot.all

    render json: @harvest_lots
  end

  # GET /harvest_lots/1
  def show
    render json: @harvest_lot
  end

  # POST /harvest_lots
  def create
    @harvest_lot = HarvestLot.new(harvest_lot_params)

    if @harvest_lot.save
      render json: @harvest_lot, status: :created, location: @harvest_lot
    else
      render json: @harvest_lot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /harvest_lots/1
  def update
    if @harvest_lot.update(harvest_lot_params)
      render json: @harvest_lot
    else
      render json: @harvest_lot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /harvest_lots/1
  def destroy
    @harvest_lot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest_lot
      @harvest_lot = HarvestLot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def harvest_lot_params
      params.fetch(:harvest_lot, {})
    end
end
