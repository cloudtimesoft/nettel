json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :picstr, :linkstr, :starttime, :endtime, :status, :types
  json.url advertisement_url(advertisement, format: :json)
end
