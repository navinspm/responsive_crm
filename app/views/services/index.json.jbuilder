json.array!(@services) do |service|
  json.extract! service, :id, :name, :mobileno, :email, :car, :year, :problem
  json.url service_url(service, format: :json)
end
