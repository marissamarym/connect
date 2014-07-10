json.array!(@guides) do |guide|
  json.extract! guide, :id, :user_id, :school_id, :major, :interests, :hometown, :blurb, :year, :payment_id, :payment_details
  json.url guide_url(guide, format: :json)
end
