require 'test_helper'

class HarvestTransportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harvest_transport = harvest_transports(:one)
  end

  test "should get index" do
    get harvest_transports_url, as: :json
    assert_response :success
  end

  test "should create harvest_transport" do
    assert_difference('HarvestTransport.count') do
      post harvest_transports_url, params: { harvest_transport: { harvest_id: @harvest_transport.harvest_id, transport_date: @harvest_transport.transport_date, transport_destination: @harvest_transport.transport_destination, transport_origin: @harvest_transport.transport_origin } }, as: :json
    end

    assert_response 201
  end

  test "should show harvest_transport" do
    get harvest_transport_url(@harvest_transport), as: :json
    assert_response :success
  end

  test "should update harvest_transport" do
    patch harvest_transport_url(@harvest_transport), params: { harvest_transport: { harvest_id: @harvest_transport.harvest_id, transport_date: @harvest_transport.transport_date, transport_destination: @harvest_transport.transport_destination, transport_origin: @harvest_transport.transport_origin } }, as: :json
    assert_response 200
  end

  test "should destroy harvest_transport" do
    assert_difference('HarvestTransport.count', -1) do
      delete harvest_transport_url(@harvest_transport), as: :json
    end

    assert_response 204
  end
end
