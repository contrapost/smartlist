json.array!(@sales) do |sale|
  json.extract! sale, :id, :user_id, :name, :expiry_date, :image_url
  json.url sale_url(sale, format: :json)
end
