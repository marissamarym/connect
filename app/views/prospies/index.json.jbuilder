json.array!(@prospies) do |prospie|
  json.extract! prospie, :id, :user_id
  json.url prospy_url(prospy, format: :json)
end
