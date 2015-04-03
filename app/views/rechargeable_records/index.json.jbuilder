json.array!(@rechargeable_records) do |rechargeable_record|
  json.extract! rechargeable_record, :id, :user_id, :prepaid_time, :balance, :type, :content, :end_time, :card_num
  json.url rechargeable_record_url(rechargeable_record, format: :json)
end
