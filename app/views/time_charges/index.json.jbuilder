json.array!(@time_charges) do |time_charge|
  json.extract! time_charge, :id, :tariff_standard_id, :s_charges, :c_charges, :start_time, :end_time
  json.url time_charge_url(time_charge, format: :json)
end
