json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :city
  json.url restaurant_url(restaurant, format: :json)
end
