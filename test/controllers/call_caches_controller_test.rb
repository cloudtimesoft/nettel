require 'test_helper'

class CallCachesControllerTest < ActionController::TestCase
  setup do
    @call_cach = call_caches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:call_caches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call_cach" do
    assert_difference('CallCache.count') do
      post :create, call_cach: { begin_time: @call_cach.begin_time, user_id: @call_cach.user_id }
    end

    assert_redirected_to call_cach_path(assigns(:call_cach))
  end

  test "should show call_cach" do
    get :show, id: @call_cach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @call_cach
    assert_response :success
  end

  test "should update call_cach" do
    patch :update, id: @call_cach, call_cach: { begin_time: @call_cach.begin_time, user_id: @call_cach.user_id }
    assert_redirected_to call_cach_path(assigns(:call_cach))
  end

  test "should destroy call_cach" do
    assert_difference('CallCache.count', -1) do
      delete :destroy, id: @call_cach
    end

    assert_redirected_to call_caches_path
  end
end
