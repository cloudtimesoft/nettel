require 'test_helper'

class BasicChargesControllerTest < ActionController::TestCase
  setup do
    @basic_charge = basic_charges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basic_charges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basic_charge" do
    assert_difference('BasicCharge.count') do
      post :create, basic_charge: { c_charges: @basic_charge.c_charges, s_charges: @basic_charge.s_charges, tariff_standard_id: @basic_charge.tariff_standard_id }
    end

    assert_redirected_to basic_charge_path(assigns(:basic_charge))
  end

  test "should show basic_charge" do
    get :show, id: @basic_charge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basic_charge
    assert_response :success
  end

  test "should update basic_charge" do
    patch :update, id: @basic_charge, basic_charge: { c_charges: @basic_charge.c_charges, s_charges: @basic_charge.s_charges, tariff_standard_id: @basic_charge.tariff_standard_id }
    assert_redirected_to basic_charge_path(assigns(:basic_charge))
  end

  test "should destroy basic_charge" do
    assert_difference('BasicCharge.count', -1) do
      delete :destroy, id: @basic_charge
    end

    assert_redirected_to basic_charges_path
  end
end
