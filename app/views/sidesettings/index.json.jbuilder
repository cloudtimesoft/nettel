json.array!(@sidesettings) do |sidesetting|
  json.extract! sidesetting, :id, :name, :logo, :tel, :address, :icp
  json.url sidesetting_url(sidesetting, format: :json)
end
