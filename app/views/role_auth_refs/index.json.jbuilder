json.array!(@role_auth_refs) do |role_auth_ref|
  json.extract! role_auth_ref, :id, :role_id, :auth_id, :status
  json.url role_auth_ref_url(role_auth_ref, format: :json)
end
