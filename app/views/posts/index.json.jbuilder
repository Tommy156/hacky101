json.array!(@posts) do |post|
  json.extract! post, :id, :name, :heart_beat, :latitude, :longtitude
  json.url post_url(post, format: :json)
end
