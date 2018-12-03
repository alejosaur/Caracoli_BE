class FreshFishesController < ApplicationController
  before_action :set_fresh_fish, only: [:show, :update, :destroy]

  # GET /fresh_fishes
  def index
    @fresh_fishes = FreshFish.all

    render json: @fresh_fishes
  end

  # GET /fresh_fishes/1
  def show
    render json: @fresh_fish
  end

  # POST /fresh_fishes
  def create
    @fresh_fish = FreshFish.new(fresh_fish_params)

    if @fresh_fish.save
      render json: @fresh_fish, status: :created, location: @fresh_fish
    else
      render json: @fresh_fish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fresh_fishes/1
  def update
    if @fresh_fish.update(fresh_fish_params)
      render json: @fresh_fish
    else
      render json: @fresh_fish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fresh_fishes/1
  def destroy
    @fresh_fish.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fresh_fish
      @fresh_fish = FreshFish.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fresh_fish_params
      params.require(:fresh_fish).permit(:final_weight, :size, :harvest_id)
    end
end
