json.array!(@admins) do |admin|
  json.extract! admin, :id, :name, :password_digest, :content, :status
  json.url admin_url(admin, format: :json)
end
