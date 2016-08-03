json.array!(@stars) do |star|
  json.extract! star, :id, :datetimecreated, :userwhostarred, :restaurantthatwasstarred
  json.url star_url(star, format: :json)
end
