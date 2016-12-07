json.array! @phones do |phone|
  json.phone do
    json.id phone.id
    json.name phone.name
    json.price phone.price
    json.photo_url phone.photo_url
  end
end
