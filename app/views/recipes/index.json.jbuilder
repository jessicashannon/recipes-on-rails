json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :url, :main_ingredient
  json.url recipe_url(recipe, format: :json)
end
