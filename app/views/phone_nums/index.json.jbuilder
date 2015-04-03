json.array!(@phone_nums) do |phone_num|
  json.extract! phone_num, :id, :contact_id, :type, :is_primary, :attribution, :operator
  json.url phone_num_url(phone_num, format: :json)
end
