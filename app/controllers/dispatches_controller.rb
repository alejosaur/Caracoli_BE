class DispatchesController < ApplicationController
  before_action :set_dispatch, only: [:show, :update, :destroy]

  # GET /dispatches
  def index
    @dispatches = Dispatch.all

    render json: @dispatches
  end

  # GET /dispatches/1
  def show
    render json: @dispatch
  end

  # POST /dispatches
  def create
    @dispatch = Dispatch.new(dispatch_params)

    if @dispatch.save
      render json: @dispatch, status: :created, location: @dispatch
    else
      render json: @dispatch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dispatches/1
  def update
    if @dispatch.update(dispatch_params)
      render json: @dispatch
    else
      render json: @dispatch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dispatches/1
  def destroy
    @dispatch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispatch
      @dispatch = Dispatch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dispatch_params
      params.fetch(:dispatch, {})
    end
end
