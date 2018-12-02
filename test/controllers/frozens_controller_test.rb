require 'test_helper'

class FrozensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frozen = frozens(:one)
  end

  test "should get index" do
    get frozens_url, as: :json
    assert_response :success
  end

  test "should create frozen" do
    assert_difference('Frozen.count') do
      post frozens_url, params: { frozen: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show frozen" do
    get frozen_url(@frozen), as: :json
    assert_response :success
  end

  test "should update frozen" do
    patch frozen_url(@frozen), params: { frozen: {  } }, as: :json
    assert_response 200
  end

  test "should destroy frozen" do
    assert_difference('Frozen.count', -1) do
      delete frozen_url(@frozen), as: :json
    end

    assert_response 204
  end
end
