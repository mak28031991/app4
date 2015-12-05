json.array!(@territories) do |territory|
  json.extract! territory, :id, :TerritoryDescription, :RegionID
  json.url territory_url(territory, format: :json)
end
