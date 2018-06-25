require 'test_helper'

class MoocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mooc = moocs(:one)
  end

  test "should get index" do
    get moocs_url, as: :json
    assert_response :success
  end

  test "should create mooc" do
    assert_difference('Mooc.count') do
      post moocs_url, params: { mooc: { link: @mooc.link, title: @mooc.title } }, as: :json
    end

    assert_response 201
  end

  test "should show mooc" do
    get mooc_url(@mooc), as: :json
    assert_response :success
  end

  test "should update mooc" do
    patch mooc_url(@mooc), params: { mooc: { link: @mooc.link, title: @mooc.title } }, as: :json
    assert_response 200
  end

  test "should destroy mooc" do
    assert_difference('Mooc.count', -1) do
      delete mooc_url(@mooc), as: :json
    end

    assert_response 204
  end
end
