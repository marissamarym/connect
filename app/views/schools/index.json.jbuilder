json.array!(@schools) do |school|
  json.extract! school, :id, :email, :phone, :website, :details_url
  json.url school_url(school, format: :json)
end
