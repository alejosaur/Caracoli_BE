class FrozensController < ApplicationController
  before_action :set_frozen, only: [:show, :update, :destroy]

  # GET /frozens
  def index
    @frozens = Frozen.all

    render json: @frozens
  end

  # GET /frozens/1
  def show
    render json: @frozen
  end

  # POST /frozens
  def create
    @frozen = Frozen.new(frozen_params)

    if @frozen.save
      render json: @frozen, status: :created, location: @frozen
    else
      render json: @frozen.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /frozens/1
  def update
    if @frozen.update(frozen_params)
      render json: @frozen
    else
      render json: @frozen.errors, status: :unprocessable_entity
    end
  end

  # DELETE /frozens/1
  def destroy
    @frozen.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frozen
      @frozen = Frozen.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def frozen_params
      params.fetch(:frozen, {})
    end
end
