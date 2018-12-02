class FreshesController < ApplicationController
  before_action :set_fresh, only: [:show, :update, :destroy]

  # GET /freshes
  def index
    @freshes = Fresh.all

    render json: @freshes
  end

  # GET /freshes/1
  def show
    render json: @fresh
  end

  # POST /freshes
  def create
    @fresh = Fresh.new(fresh_params)

    if @fresh.save
      render json: @fresh, status: :created, location: @fresh
    else
      render json: @fresh.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /freshes/1
  def update
    if @fresh.update(fresh_params)
      render json: @fresh
    else
      render json: @fresh.errors, status: :unprocessable_entity
    end
  end

  # DELETE /freshes/1
  def destroy
    @fresh.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fresh
      @fresh = Fresh.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fresh_params
      params.fetch(:fresh, {})
    end
end
