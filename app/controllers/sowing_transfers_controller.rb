class SowingTransfersController < ApplicationController
  before_action :set_sowing_transfer, only: [:show, :update, :destroy]

  # GET /sowing_transfers
  def index
    @sowing_transfers = SowingTransfer.all

    render json: @sowing_transfers
  end

  # GET /sowing_transfers/1
  def show
    render json: @sowing_transfer
  end

  # POST /sowing_transfers
  def create
    @sowing_transfer = SowingTransfer.new(sowing_transfer_params)

    if @sowing_transfer.save
      render json: @sowing_transfer, status: :created, location: @sowing_transfer
    else
      render json: @sowing_transfer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sowing_transfers/1
  def update
    if @sowing_transfer.update(sowing_transfer_params)
      render json: @sowing_transfer
    else
      render json: @sowing_transfer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sowing_transfers/1
  def destroy
    @sowing_transfer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sowing_transfer
      @sowing_transfer = SowingTransfer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sowing_transfer_params
      params.fetch(:sowing_transfer, {})
    end
end
