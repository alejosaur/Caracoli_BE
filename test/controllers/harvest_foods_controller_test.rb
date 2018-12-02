require 'test_helper'

class HarvestFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harvest_food = harvest_foods(:one)
  end

  test "should get index" do
    get harvest_foods_url, as: :json
    assert_response :success
  end

  test "should create harvest_food" do
    assert_difference('HarvestFood.count') do
      post harvest_foods_url, params: { harvest_food: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show harvest_food" do
    get harvest_food_url(@harvest_food), as: :json
    assert_response :success
  end

  test "should update harvest_food" do
    patch harvest_food_url(@harvest_food), params: { harvest_food: {  } }, as: :json
    assert_response 200
  end

  test "should destroy harvest_food" do
    assert_difference('HarvestFood.count', -1) do
      delete harvest_food_url(@harvest_food), as: :json
    end

    assert_response 204
  end
end
