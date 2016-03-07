json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :title, :url
  json.url favorite_url(favorite, format: :json)
end
