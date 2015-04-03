json.array!(@rechargeable_cards) do |rechargeable_card|
  json.extract! rechargeable_card, :id, :pwd, :make_card_id, :card_number, :card_sum, :effective_time, :card_type, :end_time, :content, :giving, :failure
  json.url rechargeable_card_url(rechargeable_card, format: :json)
end
