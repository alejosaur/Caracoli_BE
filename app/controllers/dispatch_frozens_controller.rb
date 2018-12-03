class DispatchFrozensController < ApplicationController
  before_action :set_dispatch_frozen, only: [:show, :update, :destroy]

  # GET /dispatch_frozens
  def index
    @dispatch_frozens = DispatchFrozen.all

    render json: @dispatch_frozens
  end

  # GET /dispatch_frozens/1
  def show
    render json: @dispatch_frozen
  end

  # POST /dispatch_frozens
  def create
    @dispatch_frozen = DispatchFrozen.new(dispatch_frozen_params)

    if @dispatch_frozen.save
      render json: @dispatch_frozen, status: :created, location: @dispatch_frozen
    else
      render json: @dispatch_frozen.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dispatch_frozens/1
  def update
    if @dispatch_frozen.update(dispatch_frozen_params)
      render json: @dispatch_frozen
    else
      render json: @dispatch_frozen.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dispatch_frozens/1
  def destroy
    @dispatch_frozen.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispatch_frozen
      @dispatch_frozen = DispatchFrozen.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dispatch_frozen_params
      params.require(:dispatch_frozen).permit(:frozen_fish_id, :dispatch_id)
    end
end
