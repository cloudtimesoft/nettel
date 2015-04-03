json.array!(@records) do |record|
  json.extract! record, :id, :phone_num_id, :time, :cost, :start_time, :tag, :user_delete
  json.url record_url(record, format: :json)
end
