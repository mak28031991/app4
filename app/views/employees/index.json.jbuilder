json.array!(@employees) do |employee|
  json.extract! employee, :id, :LastName, :FirstName, :Title, :TitleOfCourtesy, :BirthDate, :HireDate, :Address, :City, :Region, :PostalCode, :Country, :HomePhone, :Extension, :Photo, :Notes, :ReportsTo, :PhotoPath
  json.url employee_url(employee, format: :json)
end
