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
      post harvests_url, params: { harvest: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show harvest" do
    get harvest_url(@harvest), as: :json
    assert_response :success
  end

  test "should update harvest" do
    patch harvest_url(@harvest), params: { harvest: {  } }, as: :json
    assert_response 200
  end

  test "should destroy harvest" do
    assert_difference('Harvest.count', -1) do
      delete harvest_url(@harvest), as: :json
    end

    assert_response 204
  end
end
