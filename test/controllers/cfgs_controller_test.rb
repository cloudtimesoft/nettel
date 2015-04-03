require 'test_helper'

class CfgsControllerTest < ActionController::TestCase
  setup do
    @cfg = cfgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cfgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cfg" do
    assert_difference('Cfg.count') do
      post :create, cfg: { company_name: @cfg.company_name, content: @cfg.content, gateway: @cfg.gateway, give_cost: @cfg.give_cost, sales_tel: @cfg.sales_tel, service_tel: @cfg.service_tel }
    end

    assert_redirected_to cfg_path(assigns(:cfg))
  end

  test "should show cfg" do
    get :show, id: @cfg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cfg
    assert_response :success
  end

  test "should update cfg" do
    patch :update, id: @cfg, cfg: { company_name: @cfg.company_name, content: @cfg.content, gateway: @cfg.gateway, give_cost: @cfg.give_cost, sales_tel: @cfg.sales_tel, service_tel: @cfg.service_tel }
    assert_redirected_to cfg_path(assigns(:cfg))
  end

  test "should destroy cfg" do
    assert_difference('Cfg.count', -1) do
      delete :destroy, id: @cfg
    end

    assert_redirected_to cfgs_path
  end
end
