json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :city, :city_img
  json.url address_url(address, format: :json)
end
