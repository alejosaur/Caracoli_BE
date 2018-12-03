require 'test_helper'

class LotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lot = lots(:one)
  end

  test "should get index" do
    get lots_url, as: :json
    assert_response :success
  end

  test "should create lot" do
    assert_difference('Lot.count') do
      post lots_url, params: { lot: { date: @lot.date, females: @lot.females, fry_farms_id: @lot.fry_farms_id, males: @lot.males, species: @lot.species, weight: @lot.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show lot" do
    get lot_url(@lot), as: :json
    assert_response :success
  end

  test "should update lot" do
    patch lot_url(@lot), params: { lot: { date: @lot.date, females: @lot.females, fry_farms_id: @lot.fry_farms_id, males: @lot.males, species: @lot.species, weight: @lot.weight } }, as: :json
    assert_response 200
  end

  test "should destroy lot" do
    assert_difference('Lot.count', -1) do
      delete lot_url(@lot), as: :json
    end

    assert_response 204
  end
end
