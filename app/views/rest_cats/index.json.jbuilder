json.array!(@rest_cats) do |rest_cat|
  json.extract! rest_cat, :id, :rsetaurant_id, :category_id
  json.url rest_cat_url(rest_cat, format: :json)
end
