require 'test_helper'

class SidesettingsControllerTest < ActionController::TestCase
  setup do
    @sidesetting = sidesettings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sidesettings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sidesetting" do
    assert_difference('Sidesetting.count') do
      post :create, sidesetting: { address: @sidesetting.address, icp: @sidesetting.icp, logo: @sidesetting.logo, name: @sidesetting.name, tel: @sidesetting.tel }
    end

    assert_redirected_to sidesetting_path(assigns(:sidesetting))
  end

  test "should show sidesetting" do
    get :show, id: @sidesetting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sidesetting
    assert_response :success
  end

  test "should update sidesetting" do
    patch :update, id: @sidesetting, sidesetting: { address: @sidesetting.address, icp: @sidesetting.icp, logo: @sidesetting.logo, name: @sidesetting.name, tel: @sidesetting.tel }
    assert_redirected_to sidesetting_path(assigns(:sidesetting))
  end

  test "should destroy sidesetting" do
    assert_difference('Sidesetting.count', -1) do
      delete :destroy, id: @sidesetting
    end

    assert_redirected_to sidesettings_path
  end
end
