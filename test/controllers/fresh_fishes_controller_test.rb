require 'test_helper'

class FreshFishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fresh_fish = fresh_fishes(:one)
  end

  test "should get index" do
    get fresh_fishes_url, as: :json
    assert_response :success
  end

  test "should create fresh_fish" do
    assert_difference('FreshFish.count') do
      post fresh_fishes_url, params: { fresh_fish: { final_weight: @fresh_fish.final_weight, harvest_id: @fresh_fish.harvest_id, size: @fresh_fish.size } }, as: :json
    end

    assert_response 201
  end

  test "should show fresh_fish" do
    get fresh_fish_url(@fresh_fish), as: :json
    assert_response :success
  end

  test "should update fresh_fish" do
    patch fresh_fish_url(@fresh_fish), params: { fresh_fish: { final_weight: @fresh_fish.final_weight, harvest_id: @fresh_fish.harvest_id, size: @fresh_fish.size } }, as: :json
    assert_response 200
  end

  test "should destroy fresh_fish" do
    assert_difference('FreshFish.count', -1) do
      delete fresh_fish_url(@fresh_fish), as: :json
    end

    assert_response 204
  end
end
