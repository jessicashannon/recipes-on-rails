json.array!(@sentiments) do |sentiment|
  json.extract! sentiment, :id, :sentiments
  json.url sentiment_url(sentiment, format: :json)
end
