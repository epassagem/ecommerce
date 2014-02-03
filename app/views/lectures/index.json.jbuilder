json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :product_id, :name, :description, :video, :img
  json.url lecture_url(lecture, format: :json)
end
