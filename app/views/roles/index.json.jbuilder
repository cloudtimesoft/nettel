json.array!(@roles) do |role|
  json.extract! role, :id, :name, :content, :is_admin, :role_status
  json.url role_url(role, format: :json)
end
