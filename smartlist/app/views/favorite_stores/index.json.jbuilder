json.array!(@favorite_stores) do |favorite_store|
  json.extract! favorite_store, :id, :name, :address, :latitude, :longitude
  json.url favorite_store_url(favorite_store, format: :json)
end
