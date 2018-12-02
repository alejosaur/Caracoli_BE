require 'test_helper'

class SowingTransfersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sowing_transfer = sowing_transfers(:one)
  end

  test "should get index" do
    get sowing_transfers_url, as: :json
    assert_response :success
  end

  test "should create sowing_transfer" do
    assert_difference('SowingTransfer.count') do
      post sowing_transfers_url, params: { sowing_transfer: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show sowing_transfer" do
    get sowing_transfer_url(@sowing_transfer), as: :json
    assert_response :success
  end

  test "should update sowing_transfer" do
    patch sowing_transfer_url(@sowing_transfer), params: { sowing_transfer: {  } }, as: :json
    assert_response 200
  end

  test "should destroy sowing_transfer" do
    assert_difference('SowingTransfer.count', -1) do
      delete sowing_transfer_url(@sowing_transfer), as: :json
    end

    assert_response 204
  end
end
