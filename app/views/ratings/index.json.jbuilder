json.array!(@ratings) do |rating|
  json.extract! rating, :id, :tour_id, :score
  json.url rating_url(rating, format: :json)
end
