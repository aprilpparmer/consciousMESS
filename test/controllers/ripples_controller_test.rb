require 'test_helper'

class RipplesControllerTest < ActionController::TestCase
  setup do
    @ripple = ripples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ripples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ripple" do
    assert_difference('Ripple.count') do
      post :create, ripple: { message: @ripple.message, username: @ripple.username, username_url: @ripple.username_url }
    end

    assert_redirected_to ripple_path(assigns(:ripple))
  end

  test "should show ripple" do
    get :show, id: @ripple
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ripple
    assert_response :success
  end

  test "should update ripple" do
    patch :update, id: @ripple, ripple: { message: @ripple.message, username: @ripple.username, username_url: @ripple.username_url }
    assert_redirected_to ripple_path(assigns(:ripple))
  end

  test "should destroy ripple" do
    assert_difference('Ripple.count', -1) do
      delete :destroy, id: @ripple
    end

    assert_redirected_to ripples_path
  end
end
