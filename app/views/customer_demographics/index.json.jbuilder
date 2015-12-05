json.array!(@customer_demographics) do |customer_demographic|
  json.extract! customer_demographic, :id, :CustomerDesc
  json.url customer_demographic_url(customer_demographic, format: :json)
end
