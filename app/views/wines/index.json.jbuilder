json.array!(@wines) do |wine|
  json.extract! wine, :id, :color, :varietal
  json.url wine_url(wine, format: :json)
end
