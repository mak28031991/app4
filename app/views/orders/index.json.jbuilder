json.array!(@orders) do |order|
  json.extract! order, :id, :CustomerID, :EmployeeID, :OrderDate, :RequiredDate, :ShippedDate, :ShipVia, :Freight, :ShipName, :ShipAddress, :ShipCity, :ShipRegion, :ShipPostalCode, :ShipCountry
  json.url order_url(order, format: :json)
end
