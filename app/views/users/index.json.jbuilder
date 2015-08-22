json.array!(@users) do |user|
  json.extract! user, :id, :mac, :name, :heartbeat, :self_latitude, :self_longitude, :sanc_latitude, :sanc_longitude, :direction
  json.url user_url(user, format: :json)
end
