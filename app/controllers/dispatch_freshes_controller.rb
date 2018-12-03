class DispatchFreshesController < ApplicationController
  before_action :set_dispatch_fresh, only: [:show, :update, :destroy]

  # GET /dispatch_freshes
  def index
    @dispatch_freshes = DispatchFresh.all

    render json: @dispatch_freshes
  end

  # GET /dispatch_freshes/1
  def show
    render json: @dispatch_fresh
  end

  # POST /dispatch_freshes
  def create
    @dispatch_fresh = DispatchFresh.new(dispatch_fresh_params)

    if @dispatch_fresh.save
      render json: @dispatch_fresh, status: :created, location: @dispatch_fresh
    else
      render json: @dispatch_fresh.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dispatch_freshes/1
  def update
    if @dispatch_fresh.update(dispatch_fresh_params)
      render json: @dispatch_fresh
    else
      render json: @dispatch_fresh.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dispatch_freshes/1
  def destroy
    @dispatch_fresh.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispatch_fresh
      @dispatch_fresh = DispatchFresh.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dispatch_fresh_params
      params.require(:dispatch_fresh).permit(:fresh_fish_id, :dispatch_id)
    end
end
