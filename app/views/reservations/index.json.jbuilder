json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :user_id, :, :restaurant_id, :, :email, :, :requesteddatetime, :, :shortmessage, :
  json.url reservation_url(reservation, format: :json)
end
