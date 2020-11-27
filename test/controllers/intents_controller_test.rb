require 'test_helper'

class IntentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intent = intents(:one)
  end

  test "should get index" do
    get intents_url
    assert_response :success
  end

  test "should get new" do
    get new_intent_url
    assert_response :success
  end

  test "should create intent" do
    assert_difference('Intent.count') do
      post intents_url, params: { intent: { intent: @intent.intent } }
    end

    assert_redirected_to intent_url(Intent.last)
  end

  test "should show intent" do
    get intent_url(@intent)
    assert_response :success
  end

  test "should get edit" do
    get edit_intent_url(@intent)
    assert_response :success
  end

  test "should update intent" do
    patch intent_url(@intent), params: { intent: { intent: @intent.intent } }
    assert_redirected_to intent_url(@intent)
  end

  test "should destroy intent" do
    assert_difference('Intent.count', -1) do
      delete intent_url(@intent)
    end

    assert_redirected_to intents_url
  end
end
