require 'test_helper'

class AreaCodeDetailsControllerTest < ActionController::TestCase
  setup do
    @area_code_detail = area_code_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:area_code_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area_code_detail" do
    assert_difference('AreaCodeDetail.count') do
      post :create, area_code_detail: { area_code: @area_code_detail.area_code, name: @area_code_detail.name, province_id: @area_code_detail.province_id }
    end

    assert_redirected_to area_code_detail_path(assigns(:area_code_detail))
  end

  test "should show area_code_detail" do
    get :show, id: @area_code_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @area_code_detail
    assert_response :success
  end

  test "should update area_code_detail" do
    patch :update, id: @area_code_detail, area_code_detail: { area_code: @area_code_detail.area_code, name: @area_code_detail.name, province_id: @area_code_detail.province_id }
    assert_redirected_to area_code_detail_path(assigns(:area_code_detail))
  end

  test "should destroy area_code_detail" do
    assert_difference('AreaCodeDetail.count', -1) do
      delete :destroy, id: @area_code_detail
    end

    assert_redirected_to area_code_details_path
  end
end
