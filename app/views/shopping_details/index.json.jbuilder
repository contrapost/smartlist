json.array!(@shopping_details) do |shopping_detail|
  json.extract! shopping_detail, :id
  json.url shopping_detail_url(shopping_detail, format: :json)
end
