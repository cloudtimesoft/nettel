json.array!(@contacts) do |contact|
  json.extract! contact, :id, :user_id, :last_name, :first_name, :content
  json.url contact_url(contact, format: :json)
end
