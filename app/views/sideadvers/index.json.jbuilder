json.array!(@sideadvers) do |sideadver|
  json.extract! sideadver, :id, :local, :linkto, :isenabled
  json.url sideadver_url(sideadver, format: :json)
end
