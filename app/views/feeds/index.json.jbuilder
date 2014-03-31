son.array!(@feeds) do |feed|
  json.extract! feed, :id, :title, :description, :url
  json.url feed_url(feed, format: :json)
end
