require 'test_helper'

class HarvestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harvest = harvests(:one)
  end

  test "should get index" do
    get harvests_url, as: :json
    assert_response :success
  end

  test "should create harvest" do
    assert_difference('Harvest.count') do
      post harvests_url, params: { harvest: { final_weight: @harvest.final_weight, harvest_date: @harvest.harvest_date, production_center_id: @harvest.production_center_id } }, as: :json
    end

    assert_response 201
  end

  test "should show harvest" do
    get harvest_url(@harvest), as: :json
    assert_response :success
  end

  test "should update harvest" do
    patch harvest_url(@harvest), params: { harvest: { final_weight: @harvest.final_weight, harvest_date: @harvest.harvest_date, production_center_id: @harvest.production_center_id } }, as: :json
    assert_response 200
  end

  test "should destroy harvest" do
    assert_difference('Harvest.count', -1) do
      delete harvest_url(@harvest), as: :json
    end

    assert_response 204
  end
end
