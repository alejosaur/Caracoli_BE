require 'test_helper'

class HarvestTransfersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harvest_transfer = harvest_transfers(:one)
  end

  test "should get index" do
    get harvest_transfers_url, as: :json
    assert_response :success
  end

  test "should create harvest_transfer" do
    assert_difference('HarvestTransfer.count') do
      post harvest_transfers_url, params: { harvest_transfer: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show harvest_transfer" do
    get harvest_transfer_url(@harvest_transfer), as: :json
    assert_response :success
  end

  test "should update harvest_transfer" do
    patch harvest_transfer_url(@harvest_transfer), params: { harvest_transfer: {  } }, as: :json
    assert_response 200
  end

  test "should destroy harvest_transfer" do
    assert_difference('HarvestTransfer.count', -1) do
      delete harvest_transfer_url(@harvest_transfer), as: :json
    end

    assert_response 204
  end
end
