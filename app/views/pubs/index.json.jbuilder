json.array!(@pubs) do |pub|
  json.extract! pub, :id, :title, :type, :content, :start_time, :end_time, :status, :sort
  json.url pub_url(pub, format: :json)
end
