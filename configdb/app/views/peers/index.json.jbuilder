json.array!(@peers) do |peer|
  json.extract! peer, :id, :device_id, :autnum_id, :neighbor
  json.url peer_url(peer, format: :json)
end
