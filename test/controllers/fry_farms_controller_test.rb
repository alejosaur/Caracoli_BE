require 'test_helper'

class FryFarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fry_farm = fry_farms(:one)
  end

  test "should get index" do
    get fry_farms_url, as: :json
    assert_response :success
  end

  test "should create fry_farm" do
    assert_difference('FryFarm.count') do
      post fry_farms_url, params: { fry_farm: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show fry_farm" do
    get fry_farm_url(@fry_farm), as: :json
    assert_response :success
  end

  test "should update fry_farm" do
    patch fry_farm_url(@fry_farm), params: { fry_farm: {  } }, as: :json
    assert_response 200
  end

  test "should destroy fry_farm" do
    assert_difference('FryFarm.count', -1) do
      delete fry_farm_url(@fry_farm), as: :json
    end

    assert_response 204
  end
end
