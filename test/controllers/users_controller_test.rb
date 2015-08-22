require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { direction: @user.direction, heartbeat: @user.heartbeat, mac: @user.mac, name: @user.name, sanc_latitude: @user.sanc_latitude, sanc_longitude: @user.sanc_longitude, self_latitude: @user.self_latitude, self_longitude: @user.self_longitude }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { direction: @user.direction, heartbeat: @user.heartbeat, mac: @user.mac, name: @user.name, sanc_latitude: @user.sanc_latitude, sanc_longitude: @user.sanc_longitude, self_latitude: @user.self_latitude, self_longitude: @user.self_longitude }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
