require 'test_helper'

class DispatchFreshesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispatch_fresh = dispatch_freshes(:one)
  end

  test "should get index" do
    get dispatch_freshes_url, as: :json
    assert_response :success
  end

  test "should create dispatch_fresh" do
    assert_difference('DispatchFresh.count') do
      post dispatch_freshes_url, params: { dispatch_fresh: { dispatch_id: @dispatch_fresh.dispatch_id, fresh_fish_id: @dispatch_fresh.fresh_fish_id } }, as: :json
    end

    assert_response 201
  end

  test "should show dispatch_fresh" do
    get dispatch_fresh_url(@dispatch_fresh), as: :json
    assert_response :success
  end

  test "should update dispatch_fresh" do
    patch dispatch_fresh_url(@dispatch_fresh), params: { dispatch_fresh: { dispatch_id: @dispatch_fresh.dispatch_id, fresh_fish_id: @dispatch_fresh.fresh_fish_id } }, as: :json
    assert_response 200
  end

  test "should destroy dispatch_fresh" do
    assert_difference('DispatchFresh.count', -1) do
      delete dispatch_fresh_url(@dispatch_fresh), as: :json
    end

    assert_response 204
  end
end
