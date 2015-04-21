require 'test_helper'

class PubsControllerTest < ActionController::TestCase
  setup do
    @pub = pubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pub" do
    assert_difference('Pub.count') do
      post :create, pub: { content: @pub.content, endtime: @pub.endtime, sort: @pub.sort, starttime: @pub.starttime, status: @pub.status, title: @pub.title, types: @pub.types }
    end

    assert_redirected_to pub_path(assigns(:pub))
  end

  test "should show pub" do
    get :show, id: @pub
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pub
    assert_response :success
  end

  test "should update pub" do
    patch :update, id: @pub, pub: { content: @pub.content, endtime: @pub.endtime, sort: @pub.sort, starttime: @pub.starttime, status: @pub.status, title: @pub.title, types: @pub.types }
    assert_redirected_to pub_path(assigns(:pub))
  end

  test "should destroy pub" do
    assert_difference('Pub.count', -1) do
      delete :destroy, id: @pub
    end

    assert_redirected_to pubs_path
  end
end
