json.array!(@users) do |user|
  json.extract! user, :id, :tariff_standard_id, :user_name, :password_digest, :usr_status, :auth_code, :auth_code_time, :dial_way, :show_num, :area_code, :balance
  json.url user_url(user, format: :json)
end
