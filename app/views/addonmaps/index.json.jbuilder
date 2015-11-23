json.array!(@addonmaps) do |addonmap|
  json.extract! addonmap, :id, :latitude, :longitude, :name
  json.url addonmap_url(addonmap, format: :json)
end
