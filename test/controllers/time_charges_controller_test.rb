require 'test_helper'

class TimeChargesControllerTest < ActionController::TestCase
  setup do
    @time_charge = time_charges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_charges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_charge" do
    assert_difference('TimeCharge.count') do
      post :create, time_charge: { c_charges: @time_charge.c_charges, end_time: @time_charge.end_time, s_charges: @time_charge.s_charges, start_time: @time_charge.start_time, tariff_standard_id: @time_charge.tariff_standard_id }
    end

    assert_redirected_to time_charge_path(assigns(:time_charge))
  end

  test "should show time_charge" do
    get :show, id: @time_charge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_charge
    assert_response :success
  end

  test "should update time_charge" do
    patch :update, id: @time_charge, time_charge: { c_charges: @time_charge.c_charges, end_time: @time_charge.end_time, s_charges: @time_charge.s_charges, start_time: @time_charge.start_time, tariff_standard_id: @time_charge.tariff_standard_id }
    assert_redirected_to time_charge_path(assigns(:time_charge))
  end

  test "should destroy time_charge" do
    assert_difference('TimeCharge.count', -1) do
      delete :destroy, id: @time_charge
    end

    assert_redirected_to time_charges_path
  end
end
