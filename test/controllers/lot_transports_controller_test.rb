require 'test_helper'

class LotTransportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lot_transport = lot_transports(:one)
  end

  test "should get index" do
    get lot_transports_url, as: :json
    assert_response :success
  end

  test "should create lot_transport" do
    assert_difference('LotTransport.count') do
      post lot_transports_url, params: { lot_transport: { lot_id: @lot_transport.lot_id, transport_date: @lot_transport.transport_date, transport_destination: @lot_transport.transport_destination, transport_origin: @lot_transport.transport_origin } }, as: :json
    end

    assert_response 201
  end

  test "should show lot_transport" do
    get lot_transport_url(@lot_transport), as: :json
    assert_response :success
  end

  test "should update lot_transport" do
    patch lot_transport_url(@lot_transport), params: { lot_transport: { lot_id: @lot_transport.lot_id, transport_date: @lot_transport.transport_date, transport_destination: @lot_transport.transport_destination, transport_origin: @lot_transport.transport_origin } }, as: :json
    assert_response 200
  end

  test "should destroy lot_transport" do
    assert_difference('LotTransport.count', -1) do
      delete lot_transport_url(@lot_transport), as: :json
    end

    assert_response 204
  end
end
