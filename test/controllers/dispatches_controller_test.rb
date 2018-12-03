require 'test_helper'

class DispatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispatch = dispatches(:one)
  end

  test "should get index" do
    get dispatches_url, as: :json
    assert_response :success
  end

  test "should create dispatch" do
    assert_difference('Dispatch.count') do
      post dispatches_url, params: { dispatch: { client_id: @dispatch.client_id, dispatch_date: @dispatch.dispatch_date } }, as: :json
    end

    assert_response 201
  end

  test "should show dispatch" do
    get dispatch_url(@dispatch), as: :json
    assert_response :success
  end

  test "should update dispatch" do
    patch dispatch_url(@dispatch), params: { dispatch: { client_id: @dispatch.client_id, dispatch_date: @dispatch.dispatch_date } }, as: :json
    assert_response 200
  end

  test "should destroy dispatch" do
    assert_difference('Dispatch.count', -1) do
      delete dispatch_url(@dispatch), as: :json
    end

    assert_response 204
  end
end
