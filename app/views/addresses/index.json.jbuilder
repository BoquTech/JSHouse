json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :province, :city
  json.url address_url(address, format: :json)
end
