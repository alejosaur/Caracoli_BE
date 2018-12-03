require 'test_helper'

class FoodInHarvestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_in_harvest = food_in_harvests(:one)
  end

  test "should get index" do
    get food_in_harvests_url, as: :json
    assert_response :success
  end

  test "should create food_in_harvest" do
    assert_difference('FoodInHarvest.count') do
      post food_in_harvests_url, params: { food_in_harvest: { food_id: @food_in_harvest.food_id, harvest_id: @food_in_harvest.harvest_id } }, as: :json
    end

    assert_response 201
  end

  test "should show food_in_harvest" do
    get food_in_harvest_url(@food_in_harvest), as: :json
    assert_response :success
  end

  test "should update food_in_harvest" do
    patch food_in_harvest_url(@food_in_harvest), params: { food_in_harvest: { food_id: @food_in_harvest.food_id, harvest_id: @food_in_harvest.harvest_id } }, as: :json
    assert_response 200
  end

  test "should destroy food_in_harvest" do
    assert_difference('FoodInHarvest.count', -1) do
      delete food_in_harvest_url(@food_in_harvest), as: :json
    end

    assert_response 204
  end
end
