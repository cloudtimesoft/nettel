json.array!(@auths) do |auth|
  json.extract! auth, :id, :name, :url, :parent_id
  json.url auth_url(auth, format: :json)
end
