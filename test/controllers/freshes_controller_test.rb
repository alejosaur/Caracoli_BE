require 'test_helper'

class FreshesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fresh = freshes(:one)
  end

  test "should get index" do
    get freshes_url, as: :json
    assert_response :success
  end

  test "should create fresh" do
    assert_difference('Fresh.count') do
      post freshes_url, params: { fresh: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show fresh" do
    get fresh_url(@fresh), as: :json
    assert_response :success
  end

  test "should update fresh" do
    patch fresh_url(@fresh), params: { fresh: {  } }, as: :json
    assert_response 200
  end

  test "should destroy fresh" do
    assert_difference('Fresh.count', -1) do
      delete fresh_url(@fresh), as: :json
    end

    assert_response 204
  end
end
