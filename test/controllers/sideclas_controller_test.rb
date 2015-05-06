require 'test_helper'

class SideclasControllerTest < ActionController::TestCase
  setup do
    @sidecla = sideclas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sideclas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sidecla" do
    assert_difference('Sidecla.count') do
      post :create, sidecla: { keywords: @sidecla.keywords, renderto: @sidecla.renderto, title: @sidecla.title }
    end

    assert_redirected_to sidecla_path(assigns(:sidecla))
  end

  test "should show sidecla" do
    get :show, id: @sidecla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sidecla
    assert_response :success
  end

  test "should update sidecla" do
    patch :update, id: @sidecla, sidecla: { keywords: @sidecla.keywords, renderto: @sidecla.renderto, title: @sidecla.title }
    assert_redirected_to sidecla_path(assigns(:sidecla))
  end

  test "should destroy sidecla" do
    assert_difference('Sidecla.count', -1) do
      delete :destroy, id: @sidecla
    end

    assert_redirected_to sideclas_path
  end
end
