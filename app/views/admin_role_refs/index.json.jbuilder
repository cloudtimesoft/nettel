json.array!(@admin_role_refs) do |admin_role_ref|
  json.extract! admin_role_ref, :id, :admin_id, :role_id
  json.url admin_role_ref_url(admin_role_ref, format: :json)
end
