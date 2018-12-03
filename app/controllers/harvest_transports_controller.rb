class HarvestTransportsController < ApplicationController
  before_action :set_harvest_transport, only: [:show, :update, :destroy]

  # GET /harvest_transports
  def index
    @harvest_transports = HarvestTransport.all

    render json: @harvest_transports
  end

  # GET /harvest_transports/1
  def show
    render json: @harvest_transport
  end

  # POST /harvest_transports
  def create
    @harvest_transport = HarvestTransport.new(harvest_transport_params)

    if @harvest_transport.save
      render json: @harvest_transport, status: :created, location: @harvest_transport
    else
      render json: @harvest_transport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /harvest_transports/1
  def update
    if @harvest_transport.update(harvest_transport_params)
      render json: @harvest_transport
    else
      render json: @harvest_transport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /harvest_transports/1
  def destroy
    @harvest_transport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest_transport
      @harvest_transport = HarvestTransport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def harvest_transport_params
      params.require(:harvest_transport).permit(:transport_date, :transport_origin, :transport_destination, :harvest_id)
    end
end
