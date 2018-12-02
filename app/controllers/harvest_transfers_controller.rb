class HarvestTransfersController < ApplicationController
  before_action :set_harvest_transfer, only: [:show, :update, :destroy]

  # GET /harvest_transfers
  def index
    @harvest_transfers = HarvestTransfer.all

    render json: @harvest_transfers
  end

  # GET /harvest_transfers/1
  def show
    render json: @harvest_transfer
  end

  # POST /harvest_transfers
  def create
    @harvest_transfer = HarvestTransfer.new(harvest_transfer_params)

    if @harvest_transfer.save
      render json: @harvest_transfer, status: :created, location: @harvest_transfer
    else
      render json: @harvest_transfer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /harvest_transfers/1
  def update
    if @harvest_transfer.update(harvest_transfer_params)
      render json: @harvest_transfer
    else
      render json: @harvest_transfer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /harvest_transfers/1
  def destroy
    @harvest_transfer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest_transfer
      @harvest_transfer = HarvestTransfer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def harvest_transfer_params
      params.fetch(:harvest_transfer, {})
    end
end
