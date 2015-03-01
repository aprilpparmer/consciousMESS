json.array!(@ripples) do |ripple|
  json.extract! ripple, :id, :username, :username_url, :message
  json.url ripple_url(ripple, format: :json)
end
