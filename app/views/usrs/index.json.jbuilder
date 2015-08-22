json.array!(@usrs) do |usr|
  json.extract! usr, :id, :mac, :name, :heart_beat, :self_latitude, :self_longitude, :sanc_latitude, :sanc_longitude, :t.integer, :
  json.url usr_url(usr, format: :json)
end
