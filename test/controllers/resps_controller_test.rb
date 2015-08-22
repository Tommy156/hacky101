require 'test_helper'

class RespsControllerTest < ActionController::TestCase
  setup do
    @resp = resps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resp" do
    assert_difference('Resp.count') do
      post :create, resp: { heart_beat: @resp.heart_beat, latitude: @resp.latitude, longitude: @resp.longitude, name: @resp.name }
    end

    assert_redirected_to resp_path(assigns(:resp))
  end

  test "should show resp" do
    get :show, id: @resp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resp
    assert_response :success
  end

  test "should update resp" do
    patch :update, id: @resp, resp: { heart_beat: @resp.heart_beat, latitude: @resp.latitude, longitude: @resp.longitude, name: @resp.name }
    assert_redirected_to resp_path(assigns(:resp))
  end

  test "should destroy resp" do
    assert_difference('Resp.count', -1) do
      delete :destroy, id: @resp
    end

    assert_redirected_to resps_path
  end
end
