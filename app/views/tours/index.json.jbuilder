json.array!(@tours) do |tour|
  json.extract! tour, :id, :tour_request_id, :guide_percentage, :price, :canceled, :notes, :scheduled_time, :paid, :private_notes
  json.url tour_url(tour, format: :json)
end
