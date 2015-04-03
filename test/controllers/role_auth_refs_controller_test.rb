require 'test_helper'

class RoleAuthRefsControllerTest < ActionController::TestCase
  setup do
    @role_auth_ref = role_auth_refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:role_auth_refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create role_auth_ref" do
    assert_difference('RoleAuthRef.count') do
      post :create, role_auth_ref: { auth_id: @role_auth_ref.auth_id, role_id: @role_auth_ref.role_id }
    end

    assert_redirected_to role_auth_ref_path(assigns(:role_auth_ref))
  end

  test "should show role_auth_ref" do
    get :show, id: @role_auth_ref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @role_auth_ref
    assert_response :success
  end

  test "should update role_auth_ref" do
    patch :update, id: @role_auth_ref, role_auth_ref: { auth_id: @role_auth_ref.auth_id, role_id: @role_auth_ref.role_id }
    assert_redirected_to role_auth_ref_path(assigns(:role_auth_ref))
  end

  test "should destroy role_auth_ref" do
    assert_difference('RoleAuthRef.count', -1) do
      delete :destroy, id: @role_auth_ref
    end

    assert_redirected_to role_auth_refs_path
  end
end
