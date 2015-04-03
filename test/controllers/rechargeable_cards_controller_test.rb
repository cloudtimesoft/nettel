require 'test_helper'

class RechargeableCardsControllerTest < ActionController::TestCase
  setup do
    @rechargeable_card = rechargeable_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rechargeable_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rechargeable_card" do
    assert_difference('RechargeableCard.count') do
      post :create, rechargeable_card: { card_number: @rechargeable_card.card_number, card_sum: @rechargeable_card.card_sum, card_type: @rechargeable_card.card_type, content: @rechargeable_card.content, effective_time: @rechargeable_card.effective_time, end_time: @rechargeable_card.end_time, failure: @rechargeable_card.failure, giving: @rechargeable_card.giving, make_card_id: @rechargeable_card.make_card_id, pwd: @rechargeable_card.pwd }
    end

    assert_redirected_to rechargeable_card_path(assigns(:rechargeable_card))
  end

  test "should show rechargeable_card" do
    get :show, id: @rechargeable_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rechargeable_card
    assert_response :success
  end

  test "should update rechargeable_card" do
    patch :update, id: @rechargeable_card, rechargeable_card: { card_number: @rechargeable_card.card_number, card_sum: @rechargeable_card.card_sum, card_type: @rechargeable_card.card_type, content: @rechargeable_card.content, effective_time: @rechargeable_card.effective_time, end_time: @rechargeable_card.end_time, failure: @rechargeable_card.failure, giving: @rechargeable_card.giving, make_card_id: @rechargeable_card.make_card_id, pwd: @rechargeable_card.pwd }
    assert_redirected_to rechargeable_card_path(assigns(:rechargeable_card))
  end

  test "should destroy rechargeable_card" do
    assert_difference('RechargeableCard.count', -1) do
      delete :destroy, id: @rechargeable_card
    end

    assert_redirected_to rechargeable_cards_path
  end
end
