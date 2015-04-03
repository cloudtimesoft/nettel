json.array!(@call_caches) do |call_cach|
  json.extract! call_cach, :id, :user_id, :begin_time
  json.url call_cach_url(call_cach, format: :json)
end
