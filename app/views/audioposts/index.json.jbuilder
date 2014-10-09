json.array!(@audioposts) do |audiopost|
  json.extract! audiopost, :id
  json.url audiopost_url(audiopost, format: :json)
end
