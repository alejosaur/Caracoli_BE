require 'test_helper'

class ProductionCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_center = production_centers(:one)
  end

  test "should get index" do
    get production_centers_url, as: :json
    assert_response :success
  end

  test "should create production_center" do
    assert_difference('ProductionCenter.count') do
      post production_centers_url, params: { production_center: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show production_center" do
    get production_center_url(@production_center), as: :json
    assert_response :success
  end

  test "should update production_center" do
    patch production_center_url(@production_center), params: { production_center: {  } }, as: :json
    assert_response 200
  end

  test "should destroy production_center" do
    assert_difference('ProductionCenter.count', -1) do
      delete production_center_url(@production_center), as: :json
    end

    assert_response 204
  end
end
