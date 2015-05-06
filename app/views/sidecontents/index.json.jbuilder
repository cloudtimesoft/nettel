json.array!(@sidecontents) do |sidecontent|
  json.extract! sidecontent, :id, :sidecla_id, :title, :inpaper, :oprice, :pprice, :content, :time, :admin_id
  json.url sidecontent_url(sidecontent, format: :json)
end
