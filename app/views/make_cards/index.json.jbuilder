json.array!(@make_cards) do |make_card|
  json.extract! make_card, :id, :admin_id, :card_type, :batch, :card_len, :time, :card_sum, :amount, :content, :giving
  json.url make_card_url(make_card, format: :json)
end
