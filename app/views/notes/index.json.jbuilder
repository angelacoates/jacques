json.notes do
  json.array! @notes do |note|
    json.extract! note, :title, :body, :created_at, :updated_at
    json.tags note.tags, :name
  end
end
