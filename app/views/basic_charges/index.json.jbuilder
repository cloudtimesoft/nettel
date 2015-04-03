json.array!(@basic_charges) do |basic_charge|
  json.extract! basic_charge, :id, :tariff_standard_id, :s_charges, :c_charges
  json.url basic_charge_url(basic_charge, format: :json)
end
