require 'test_helper'

class FrozenFishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frozen_fish = frozen_fishes(:one)
  end

  test "should get index" do
    get frozen_fishes_url, as: :json
    assert_response :success
  end

  test "should create frozen_fish" do
    assert_difference('FrozenFish.count') do
      post frozen_fishes_url, params: { frozen_fish: { final_weight: @frozen_fish.final_weight, harvest_id: @frozen_fish.harvest_id, initial_weight: @frozen_fish.initial_weight, packing_date: @frozen_fish.packing_date, size: @frozen_fish.size } }, as: :json
    end

    assert_response 201
  end

  test "should show frozen_fish" do
    get frozen_fish_url(@frozen_fish), as: :json
    assert_response :success
  end

  test "should update frozen_fish" do
    patch frozen_fish_url(@frozen_fish), params: { frozen_fish: { final_weight: @frozen_fish.final_weight, harvest_id: @frozen_fish.harvest_id, initial_weight: @frozen_fish.initial_weight, packing_date: @frozen_fish.packing_date, size: @frozen_fish.size } }, as: :json
    assert_response 200
  end

  test "should destroy frozen_fish" do
    assert_difference('FrozenFish.count', -1) do
      delete frozen_fish_url(@frozen_fish), as: :json
    end

    assert_response 204
  end
end
