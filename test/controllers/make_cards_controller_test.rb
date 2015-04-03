require 'test_helper'

class MakeCardsControllerTest < ActionController::TestCase
  setup do
    @make_card = make_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:make_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create make_card" do
    assert_difference('MakeCard.count') do
      post :create, make_card: { admin_id: @make_card.admin_id, amount: @make_card.amount, batch: @make_card.batch, card_len: @make_card.card_len, card_sum: @make_card.card_sum, card_type: @make_card.card_type, content: @make_card.content, giving: @make_card.giving, time: @make_card.time }
    end

    assert_redirected_to make_card_path(assigns(:make_card))
  end

  test "should show make_card" do
    get :show, id: @make_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @make_card
    assert_response :success
  end

  test "should update make_card" do
    patch :update, id: @make_card, make_card: { admin_id: @make_card.admin_id, amount: @make_card.amount, batch: @make_card.batch, card_len: @make_card.card_len, card_sum: @make_card.card_sum, card_type: @make_card.card_type, content: @make_card.content, giving: @make_card.giving, time: @make_card.time }
    assert_redirected_to make_card_path(assigns(:make_card))
  end

  test "should destroy make_card" do
    assert_difference('MakeCard.count', -1) do
      delete :destroy, id: @make_card
    end

    assert_redirected_to make_cards_path
  end
end
