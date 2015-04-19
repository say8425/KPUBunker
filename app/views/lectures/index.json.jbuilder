json.array!(@lectures) do |lecture|
  json.extract! lecture, :id
  json.url lecture_url(lecture, format: :json)
end
