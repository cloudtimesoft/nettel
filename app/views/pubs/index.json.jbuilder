json.array!(@pubs) do |pub|
  json.extract! pub, :id, :title, :types, :content, :starttime, :endtime, :status, :sort
  json.url pub_url(pub, format: :json)
end
