require 'test_helper'

class LotFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lot_food = lot_foods(:one)
  end

  test "should get index" do
    get lot_foods_url, as: :json
    assert_response :success
  end

  test "should create lot_food" do
    assert_difference('LotFood.count') do
      post lot_foods_url, params: { lot_food: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show lot_food" do
    get lot_food_url(@lot_food), as: :json
    assert_response :success
  end

  test "should update lot_food" do
    patch lot_food_url(@lot_food), params: { lot_food: {  } }, as: :json
    assert_response 200
  end

  test "should destroy lot_food" do
    assert_difference('LotFood.count', -1) do
      delete lot_food_url(@lot_food), as: :json
    end

    assert_response 204
  end
end
