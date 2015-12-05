json.array!(@customer_customer_demos) do |customer_customer_demo|
  json.extract! customer_customer_demo, :id, :CustomerID, :CustomerTypeID
  json.url customer_customer_demo_url(customer_customer_demo, format: :json)
end
