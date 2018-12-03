require 'test_helper'

class FoodInLotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_in_lot = food_in_lots(:one)
  end

  test "should get index" do
    get food_in_lots_url, as: :json
    assert_response :success
  end

  test "should create food_in_lot" do
    assert_difference('FoodInLot.count') do
      post food_in_lots_url, params: { food_in_lot: { food_id: @food_in_lot.food_id, lot_id: @food_in_lot.lot_id } }, as: :json
    end

    assert_response 201
  end

  test "should show food_in_lot" do
    get food_in_lot_url(@food_in_lot), as: :json
    assert_response :success
  end

  test "should update food_in_lot" do
    patch food_in_lot_url(@food_in_lot), params: { food_in_lot: { food_id: @food_in_lot.food_id, lot_id: @food_in_lot.lot_id } }, as: :json
    assert_response 200
  end

  test "should destroy food_in_lot" do
    assert_difference('FoodInLot.count', -1) do
      delete food_in_lot_url(@food_in_lot), as: :json
    end

    assert_response 204
  end
end
