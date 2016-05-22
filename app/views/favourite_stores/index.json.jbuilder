json.array!(@favourite_stores) do |favourite_store|
  json.extract! favourite_store, :id, :name, :address, :latitude, :longitude, :user_id
  json.url favourite_store_url(favourite_store, format: :json)
end
