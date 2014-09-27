json.array!(@cars) do |car|
  json.extract! car, :id, :name, :price, :description
  json.url car_url(car, format: :json)
end
