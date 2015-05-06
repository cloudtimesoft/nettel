require 'test_helper'

class SidemessagesControllerTest < ActionController::TestCase
  setup do
    @sidemessage = sidemessages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sidemessages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sidemessage" do
    assert_difference('Sidemessage.count') do
      post :create, sidemessage: { contact: @sidemessage.contact, content: @sidemessage.content, tel: @sidemessage.tel }
    end

    assert_redirected_to sidemessage_path(assigns(:sidemessage))
  end

  test "should show sidemessage" do
    get :show, id: @sidemessage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sidemessage
    assert_response :success
  end

  test "should update sidemessage" do
    patch :update, id: @sidemessage, sidemessage: { contact: @sidemessage.contact, content: @sidemessage.content, tel: @sidemessage.tel }
    assert_redirected_to sidemessage_path(assigns(:sidemessage))
  end

  test "should destroy sidemessage" do
    assert_difference('Sidemessage.count', -1) do
      delete :destroy, id: @sidemessage
    end

    assert_redirected_to sidemessages_path
  end
end
