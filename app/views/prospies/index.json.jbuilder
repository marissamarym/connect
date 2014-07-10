json.array!(@prospies) do |prospy|
  json.extract! prospy, :id, :user_id
  json.url prospy_url(prospy, format: :json)
end
