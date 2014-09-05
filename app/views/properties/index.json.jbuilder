json.array!(@properties) do |property|
  json.extract! property, :id, :title, :description, :address, :bedrooms, :bathrooms, :family_rooms, :reception_rooms, :latitude, :longitude, :features, :agent_id, :agent_name, :date_available, :building_name, :district, :indoor_size, :saleable_area, :buy, :rent, :refid, :building_age, :outdoor_size, :float, :inclusive_display, :inclusive_mfee, :inclusive_govr, :address_display, :street, :view, :layout, :floor, :uuid, :user_id, :data_source, :enabled
  json.url property_url(property, format: :json)
end
