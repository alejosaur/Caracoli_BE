class LotTransportsController < ApplicationController
  before_action :set_lot_transport, only: [:show, :update, :destroy]

  # GET /lot_transports
  def index
    @lot_transports = LotTransport.all

    render json: @lot_transports
  end

  # GET /lot_transports/1
  def show
    render json: @lot_transport
  end

  # POST /lot_transports
  def create
    @lot_transport = LotTransport.new(lot_transport_params)

    if @lot_transport.save
      render json: @lot_transport, status: :created, location: @lot_transport
    else
      render json: @lot_transport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lot_transports/1
  def update
    if @lot_transport.update(lot_transport_params)
      render json: @lot_transport
    else
      render json: @lot_transport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lot_transports/1
  def destroy
    @lot_transport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lot_transport
      @lot_transport = LotTransport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lot_transport_params
      params.require(:lot_transport).permit(:transport_date, :transport_origin, :transport_destination, :lot_id)
    end
end
