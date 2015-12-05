json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :CompanyName, :ContactName, :ContactTitle, :Address, :City, :Region, :PostalCode, :Country, :Phone, :Fax, :HomePage
  json.url supplier_url(supplier, format: :json)
end
