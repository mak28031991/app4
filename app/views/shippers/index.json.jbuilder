json.array!(@shippers) do |shipper|
  json.extract! shipper, :id, :CompanyName, :Phone
  json.url shipper_url(shipper, format: :json)
end
