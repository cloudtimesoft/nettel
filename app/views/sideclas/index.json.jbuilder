json.array!(@sideclas) do |sidecla|
  json.extract! sidecla, :id, :keywords, :title, :renderto
  json.url sidecla_url(sidecla, format: :json)
end
