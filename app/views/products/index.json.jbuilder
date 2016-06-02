json.array!(@products) do |product|
  json.extract! product, :id, :user_id, :name, :price, :description, :store, :favourite_store_id
  json.url product_url(product, format: :json)
end
