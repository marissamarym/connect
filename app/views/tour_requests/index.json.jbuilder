json.array!(@tour_requests) do |tour_request|
  json.extract! tour_request, :id, :guide_id, :type, :visit_id
  json.url tour_request_url(tour_request, format: :json)
end
