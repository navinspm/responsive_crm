json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :phone, :doorno, :street, :city, :pincode, :date
  json.url customer_url(customer, format: :json)
end
