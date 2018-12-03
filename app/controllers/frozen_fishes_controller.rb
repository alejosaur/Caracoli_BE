class FrozenFishesController < ApplicationController
  before_action :set_frozen_fish, only: [:show, :update, :destroy]

  # GET /frozen_fishes
  def index
    @frozen_fishes = FrozenFish.all

    render json: @frozen_fishes
  end

  # GET /frozen_fishes/1
  def show
    render json: @frozen_fish
  end

  # POST /frozen_fishes
  def create
    @frozen_fish = FrozenFish.new(frozen_fish_params)

    if @frozen_fish.save
      render json: @frozen_fish, status: :created, location: @frozen_fish
    else
      render json: @frozen_fish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /frozen_fishes/1
  def update
    if @frozen_fish.update(frozen_fish_params)
      render json: @frozen_fish
    else
      render json: @frozen_fish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /frozen_fishes/1
  def destroy
    @frozen_fish.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frozen_fish
      @frozen_fish = FrozenFish.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def frozen_fish_params
      params.require(:frozen_fish).permit(:final_weight, :initial_weight, :final_weight, :size, :packing_date, :harvest_id)
    end
end
