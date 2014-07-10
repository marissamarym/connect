json.array!(@visits) do |visit|
  json.extract! visit, :id, :start_time, :end_time, :type, :notes, :prospie_id, :school_id
  json.url visit_url(visit, format: :json)
end
