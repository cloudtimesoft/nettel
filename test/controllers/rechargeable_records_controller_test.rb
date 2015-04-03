require 'test_helper'

class RechargeableRecordsControllerTest < ActionController::TestCase
  setup do
    @rechargeable_record = rechargeable_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rechargeable_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rechargeable_record" do
    assert_difference('RechargeableRecord.count') do
      post :create, rechargeable_record: { balance: @rechargeable_record.balance, card_num: @rechargeable_record.card_num, content: @rechargeable_record.content, end_time: @rechargeable_record.end_time, prepaid_time: @rechargeable_record.prepaid_time, type: @rechargeable_record.type, user_id: @rechargeable_record.user_id }
    end

    assert_redirected_to rechargeable_record_path(assigns(:rechargeable_record))
  end

  test "should show rechargeable_record" do
    get :show, id: @rechargeable_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rechargeable_record
    assert_response :success
  end

  test "should update rechargeable_record" do
    patch :update, id: @rechargeable_record, rechargeable_record: { balance: @rechargeable_record.balance, card_num: @rechargeable_record.card_num, content: @rechargeable_record.content, end_time: @rechargeable_record.end_time, prepaid_time: @rechargeable_record.prepaid_time, type: @rechargeable_record.type, user_id: @rechargeable_record.user_id }
    assert_redirected_to rechargeable_record_path(assigns(:rechargeable_record))
  end

  test "should destroy rechargeable_record" do
    assert_difference('RechargeableRecord.count', -1) do
      delete :destroy, id: @rechargeable_record
    end

    assert_redirected_to rechargeable_records_path
  end
end
