require 'test_helper'

class SideadversControllerTest < ActionController::TestCase
  setup do
    @sideadver = sideadvers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sideadvers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sideadver" do
    assert_difference('Sideadver.count') do
      post :create, sideadver: { isenabled: @sideadver.isenabled, linkto: @sideadver.linkto, local: @sideadver.local }
    end

    assert_redirected_to sideadver_path(assigns(:sideadver))
  end

  test "should show sideadver" do
    get :show, id: @sideadver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sideadver
    assert_response :success
  end

  test "should update sideadver" do
    patch :update, id: @sideadver, sideadver: { isenabled: @sideadver.isenabled, linkto: @sideadver.linkto, local: @sideadver.local }
    assert_redirected_to sideadver_path(assigns(:sideadver))
  end

  test "should destroy sideadver" do
    assert_difference('Sideadver.count', -1) do
      delete :destroy, id: @sideadver
    end

    assert_redirected_to sideadvers_path
  end
end
