json.array!(@cfgs) do |cfg|
  json.extract! cfg, :id, :give_cost, :company_name, :sales_tel, :service_tel, :gateway, :content
  json.url cfg_url(cfg, format: :json)
end
