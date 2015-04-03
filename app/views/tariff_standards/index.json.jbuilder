json.array!(@tariff_standards) do |tariff_standard|
  json.extract! tariff_standard, :id, :name, :content, :minus_amount
  json.url tariff_standard_url(tariff_standard, format: :json)
end
