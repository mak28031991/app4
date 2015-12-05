json.array!(@employee_territories) do |employee_territory|
  json.extract! employee_territory, :id, :EmployeeID, :TerritoryID
  json.url employee_territory_url(employee_territory, format: :json)
end
