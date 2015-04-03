require 'test_helper'

class AdminRoleRefsControllerTest < ActionController::TestCase
  setup do
    @admin_role_ref = admin_role_refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_role_refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_role_ref" do
    assert_difference('AdminRoleRef.count') do
      post :create, admin_role_ref: { admin_id: @admin_role_ref.admin_id, role_id: @admin_role_ref.role_id }
    end

    assert_redirected_to admin_role_ref_path(assigns(:admin_role_ref))
  end

  test "should show admin_role_ref" do
    get :show, id: @admin_role_ref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_role_ref
    assert_response :success
  end

  test "should update admin_role_ref" do
    patch :update, id: @admin_role_ref, admin_role_ref: { admin_id: @admin_role_ref.admin_id, role_id: @admin_role_ref.role_id }
    assert_redirected_to admin_role_ref_path(assigns(:admin_role_ref))
  end

  test "should destroy admin_role_ref" do
    assert_difference('AdminRoleRef.count', -1) do
      delete :destroy, id: @admin_role_ref
    end

    assert_redirected_to admin_role_refs_path
  end
end
