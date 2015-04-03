json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :pic_str, :link_str, :start_time, :end_time, :status, :type
  json.url advertisement_url(advertisement, format: :json)
end
