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
      post :create, user: { area_code: @user.area_code, auth_code: @user.auth_code, auth_code_time: @user.auth_code_time, balance: @user.balance, dial_way: @user.dial_way, password_digest: @user.password_digest, show_num: @user.show_num, tariff_standard_id: @user.tariff_standard_id, user_name: @user.user_name, usr_status: @user.usr_status }
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
    patch :update, id: @user, user: { area_code: @user.area_code, auth_code: @user.auth_code, auth_code_time: @user.auth_code_time, balance: @user.balance, dial_way: @user.dial_way, password_digest: @user.password_digest, show_num: @user.show_num, tariff_standard_id: @user.tariff_standard_id, user_name: @user.user_name, usr_status: @user.usr_status }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
