json.array!(@houses) do |house|
  json.extract! house, :id, :name, :introduce, :style, :price, :location, :area, :discription, :address_id
  json.url house_url(house, format: :json)
end
