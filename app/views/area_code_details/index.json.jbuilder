json.array!(@area_code_details) do |area_code_detail|
  json.extract! area_code_detail, :id, :province_id, :name, :area_code
  json.url area_code_detail_url(area_code_detail, format: :json)
end
