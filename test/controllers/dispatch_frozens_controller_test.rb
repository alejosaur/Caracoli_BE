require 'test_helper'

class DispatchFrozensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispatch_frozen = dispatch_frozens(:one)
  end

  test "should get index" do
    get dispatch_frozens_url, as: :json
    assert_response :success
  end

  test "should create dispatch_frozen" do
    assert_difference('DispatchFrozen.count') do
      post dispatch_frozens_url, params: { dispatch_frozen: { dispatch_id: @dispatch_frozen.dispatch_id, frozen_fish_id: @dispatch_frozen.frozen_fish_id } }, as: :json
    end

    assert_response 201
  end

  test "should show dispatch_frozen" do
    get dispatch_frozen_url(@dispatch_frozen), as: :json
    assert_response :success
  end

  test "should update dispatch_frozen" do
    patch dispatch_frozen_url(@dispatch_frozen), params: { dispatch_frozen: { dispatch_id: @dispatch_frozen.dispatch_id, frozen_fish_id: @dispatch_frozen.frozen_fish_id } }, as: :json
    assert_response 200
  end

  test "should destroy dispatch_frozen" do
    assert_difference('DispatchFrozen.count', -1) do
      delete dispatch_frozen_url(@dispatch_frozen), as: :json
    end

    assert_response 204
  end
end
