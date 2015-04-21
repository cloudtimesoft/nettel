json.array!(@rechargeable_records) do |rechargeable_record|
  json.extract! rechargeable_record, :id, :user_id, :preaidtime, :balance, :types, :content, :endtime, :cardnum
  json.url rechargeable_record_url(rechargeable_record, format: :json)
end
