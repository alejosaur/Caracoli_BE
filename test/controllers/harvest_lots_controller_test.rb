require 'test_helper'

class HarvestLotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harvest_lot = harvest_lots(:one)
  end

  test "should get index" do
    get harvest_lots_url, as: :json
    assert_response :success
  end

  test "should create harvest_lot" do
    assert_difference('HarvestLot.count') do
      post harvest_lots_url, params: { harvest_lot: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show harvest_lot" do
    get harvest_lot_url(@harvest_lot), as: :json
    assert_response :success
  end

  test "should update harvest_lot" do
    patch harvest_lot_url(@harvest_lot), params: { harvest_lot: {  } }, as: :json
    assert_response 200
  end

  test "should destroy harvest_lot" do
    assert_difference('HarvestLot.count', -1) do
      delete harvest_lot_url(@harvest_lot), as: :json
    end

    assert_response 204
  end
end
