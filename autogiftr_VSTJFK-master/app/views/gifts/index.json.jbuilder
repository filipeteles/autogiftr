json.array!(@gifts) do |gift|
  json.extract! gift, :id, :name, :description, :price
  json.url gift_url(gift, format: :json)
end
