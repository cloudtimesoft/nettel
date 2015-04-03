require 'test_helper'

class TariffStandardsControllerTest < ActionController::TestCase
  setup do
    @tariff_standard = tariff_standards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tariff_standards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tariff_standard" do
    assert_difference('TariffStandard.count') do
      post :create, tariff_standard: { content: @tariff_standard.content, minus_amount: @tariff_standard.minus_amount, name: @tariff_standard.name }
    end

    assert_redirected_to tariff_standard_path(assigns(:tariff_standard))
  end

  test "should show tariff_standard" do
    get :show, id: @tariff_standard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tariff_standard
    assert_response :success
  end

  test "should update tariff_standard" do
    patch :update, id: @tariff_standard, tariff_standard: { content: @tariff_standard.content, minus_amount: @tariff_standard.minus_amount, name: @tariff_standard.name }
    assert_redirected_to tariff_standard_path(assigns(:tariff_standard))
  end

  test "should destroy tariff_standard" do
    assert_difference('TariffStandard.count', -1) do
      delete :destroy, id: @tariff_standard
    end

    assert_redirected_to tariff_standards_path
  end
end
