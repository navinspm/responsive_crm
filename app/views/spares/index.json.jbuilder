json.array!(@spares) do |spare|
  json.extract! spare, :id, :spare, :car, :year, :email, :phone
  json.url spare_url(spare, format: :json)
end
