json.array!(@categories) do |category|
  json.extract! category, :id, :CategoryName, :Description, :Picture
  json.url category_url(category, format: :json)
end
